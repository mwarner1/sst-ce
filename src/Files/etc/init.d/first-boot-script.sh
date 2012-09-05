#!/bin/ksh

# 21 December 2011 Matt Warner
# First-boot script for Solaris 11 systems
# where the SST is run while the system is still being built
# with AI (replacement for JumpStart). If the system is already
# booted into normal, multi-user mode (i.e. not JumpStart), you 
# should not need this script since SST should be applying these
# settings already!
#
# With special thanks to Steffen Weiberle for taking the time to document
# http://blogs.oracle.com/stw/entry/solaris_11_express_network_tunables
#
# Other useful reference: 
# http://docs.oracle.com/cd/E23824_01/html/821-1450/appendixa-28.html

LOCATION=`dirname $0`
SCRIPTNAME=`basename $0`

logger info "Running first boot script from $LOCATION/$SCRIPTNAME"

# $1 = prop name
# $2 = protocol
# $3 = value to append
append_value() {
 echo "Appending $3 to $CURR_VAL for $2 $1"
 echo ipadm set-prop -p $1+="$3" $2
 ipadm set-prop -p $1+="$3" $2
}

# overwrite values
# $1 = prop name
# $2 = protocol
# $3 = value to set
set_value() {
 echo "setting $1 to $3 for $2"
 echo ipadm set-prop -p $1="$3" $2
 ipadm set-prop -p $1="$3" $2
}

# eliminate all values
# $1 = prop name
# $2 = protocol
eliminate_values() {
 # First set a bogus value
 # and then delete it
 # this might not work for all protocol/property combinations...
 echo "Attempting to set value of 1 for property $1 protocol $2"
 ipadm set-prop -p $1="1" $2
 # Now subtract out the value we just set
 echo "Attempting to subtract out the 1 for property $1 protocol $2"
 ipadm set-prop -p $1-="1" $2
}

# First ndd settings
append_value extra_priv_ports tcp 6112
eliminate_values extra_priv_ports udp 
set_value _forward_directed_broadcasts ip 0
set_value _rev_src_routes tcp 0
set_value _conn_req_max_q0 tcp 4096
set_value _conn_req_max_q tcp 1024
set_value smallest_anon_port tcp 32768
set_value smallest_anon_port udp 32768
set_value largest_anon_port tcp 65535
set_value largest_anon_port udp 65535
set_value smallest_nonpriv_port tcp 1024
set_value smallest_nonpriv_port udp 1024
set_value _respond_to_echo_broadcast ip 0
set_value _respond_to_echo_multicast ipv4 0
set_value _respond_to_echo_multicast ipv6 0
set_value _respond_to_timestamp ip 0
set_value _respond_to_timestamp_broadcast ip 0
set_value _respond_to_address_mask_broadcast ip 0
set_value _ignore_redirect ipv4 0
set_value _ignore_redirect ipv6 0
set_value _forward_src_routed ipv4 0
set_value _forward_src_routed ipv6 0
set_value _send_redirects ipv4 0
set_value _send_redirects ipv6 0
set_value ttl ipv4 255
set_value hoplimit ipv6 255
set_value hostmodel ipv4 strong
set_value hostmodel ipv6 strong
set_value forwarding ipv4 off
set_value forwarding ipv6 off

# Now NSCD parameters

# check whether a property group exists and add it if it doesn't
# $1 = service
# $2 = prop_group
check_and_add_app_propgroup() {
 if ! svcprop -q -p $2 $1 ; then
  echo svccfg -s $1 addpg $2 application
  svccfg -s $1 addpg $2 application
 else
  echo "Property group $2 already exists. Skipping."
 fi
}

# check whether a property group exists and add it if it doesn't
# $1 = service
# $2 = prop_group
# $3 = object type (integer, astring, etc)
# $4 = value
check_and_add_propval() {
 if ! svcprop -q -p $2 $1 ; then
  echo svccfg -s $1 addpropvalue $2 $3 $4
  svccfg -s $1 addpropvalue $2 $3 $4
 else
  echo "Property value already exists. Replacing."
  echo svccfg -s $1 delcust $2
  svccfg -s $1 delcust $2
  echo svccfg -s $1 addpropvalue $2 $3 $4
  svccfg -s $1 addpropvalue $2 $3 $4
 fi
}

# Set the positive and negative TTLs to zero in keeping
# with previous SST/JASS settings
# Personally, I think this is a mistake and would not
# run with nscd caching nothing at all, but would use
# at least a small value
check_and_add_app_propgroup name-service/cache password
check_and_add_app_propgroup name-service/cache group
check_and_add_app_propgroup name-service/cache host
check_and_add_app_propgroup name-service/cache network

check_and_add_propval name-service/cache password/positive_time_to_live integer: 0
check_and_add_propval name-service/cache password/negative_time_to_live integer: 0
check_and_add_propval name-service/cache group/positive_time_to_live integer: 0
check_and_add_propval name-service/cache group/negative_time_to_live integer: 0
check_and_add_propval name-service/cache host/positive_time_to_live integer: 0
check_and_add_propval name-service/cache host/negative_time_to_live integer: 0
# ipnodes is strangely absent from the options to configure
# yet nscd -g shows it. A bug?
# the closest we can do is to disable the ipnodes cache altogether, 
# in keeping with previous SST/JASS methodologies...
nscd -e ipnodes,no
#check_and_add_propval name-service/cache ipnodes/positive_time_to_live integer: 0
#check_and_add_propval name-service/cache ipnodes/negative_time_to_live integer: 0

svccfg -s name-service/cache:default refresh
svcadm refresh name-service/cache
svcadm restart name-service/cache

