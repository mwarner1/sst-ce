#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License (the License).
# You may not use this file except in compliance with the License.
#
# You can obtain a copy of the license at usr/src/CDDL.txt
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/CDDL.txt.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets [] replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#
#
# Copyright 2009 Sun Microsystems, Inc.  All rights reserved
# All rights reserved.
#
#ident  "@(#)minimal-Sun_ONE-WS-Solaris26.profile 2.5     03/03/24     SMI"
#

# install_type MUST be first
install_type    initial_install

# start with the minimal required number of packages
cluster         SUNWCreq

# Since this is intended to be a minimal server, the
# Solaris Core software cluster was used.  However, in 
# many cases, a few additional packages are required to
# make the system maintainable.

package		SUNWlibC	add

# To support the Network Time Protocol
#package		SUNWntpr	add
#package		SUNWntpu	add

# To support truss
#package		SUNWtoo		add

# To support snoop
# package		SUNWfns		add

# To support patchadd
package		SUNWxcu4	add

# To support Secure Shell X Tunneling
#package		SUNWxwplt	add
#package		SUNWxwrtl	add

# want to define how the disk is used - not use defaults
# 
# General Purpose Server.  Given the size of today's hard
# drives, providing 500 MB for logs, electronic mail, 
# and print queues in addition to 1 GB for swap space
# should not be a problem.  The significant amount of swap
# space can also help protect against certain denial of
# service attacks.
# 
partitioning    explicit
filesys         rootdisk.s3     500     /var
filesys         rootdisk.s1     1000    swap
filesys         rootdisk.s0     free    /


# install system as standalone
system_type     standalone

