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
#ident  "@(#)minimal-Sun_ONE-WS-Solaris7-64bit.profile 2.4     03/03/24     SMI"
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
package		SUNWlibCx	add

# To support 64 bit
package		SUNWcarx	add
package		SUNWcslx	add
package		SUNWcslu	add
package		SUNWcsxu	add
package		SUNWesxu	add
package		SUNWhmdx	add
package		SUNWkvmx	add
package		SUNWlmsx	add
package		SUNWlocx	add
package		SUNWnamox	add
package		SUNWpdx		add

# To support the Network Time Protocol
#package		SUNWntpr	add
#package		SUNWntpu	add

# To support truss
#package		SUNWtoo		add
#package		SUNWtoox	add

# To support snoop
#package		SUNWfns		add
#package		SUNWfnsx	add

# To support Secure Shell X Tunneling
#package		SUNWxcu4	add
#package		SUNWxcu4x	add
#package		SUNWxwplt	add
#package		SUNWxwplx	add
#package		SUNWxwrtl	add
#package		SUNWxwrtx	add
#package		SUNWswmt	add

# To support Secure Shell (Solaris 7+)
#package		SUNWxwice	add
#package		SUNWxwicx	add

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

