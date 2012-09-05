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
# Copyright 2009 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"@(#)minimal-Sun_ONE-WS-Solaris9.profile	1.5	05/07/18 SMI"
#

# install_type MUST be first
install_type    initial_install

# start with the minimal required number of packages
cluster         SUNWCreq

# Since this is intended to be a minimal server, the Solaris Core software
# cluster was used.  However, in many cases, a few additional packages are
# required to make the system maintainable.

package		SUNWlibC	add
package		SUNWlibCx	add

# The core software cluster does not include the Secure Shell software, so
# it must be added here.  The Secure Shell software also depends on the
# zlib libraries.

package		SUNWsshcu	add
package		SUNWsshdr	add
package		SUNWsshdu	add
package		SUNWsshr	add
package		SUNWsshu	add

package		SUNWzlib	add
package		SUNWzlibx	add

# To use the 'startconsole' functionality, the Netscape Communicator software
# is needed.  The 'startconsole' program is used to graphically manage the
# iPlanet Web Server software.

package		NSCPcom		add

# To support Netscape Communicator and take advantage of Secure Shell X11
# Tunneling, the following packages are also required:

package		SUNWdtbax	add
package		SUNWmfrun	add
package		SUNWxwplt	add
package		SUNWxwplx	add
package		SUNWxwrtl	add
package		SUNWxwrtx	add
package		SUNWxwice	add
package		SUNWxwicx	add

# The following packages are needed to support Process Accounting.

#package	SUNWaccr	add
#package	SUNWaccu	add

# The following packages are needed to support the Network Time Protocol
# (NTP) software.

#package	SUNWntpr	add
#package	SUNWntpu	add

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

