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
# ident	"@(#)minimal-Sun_ONE-WS-Solaris9-64bit.profile	1.4	05/07/18 SMI"
#
# This script is described in the August, 2002
# BluePrint OnLine article called:
#
#   Solaris Operating Environment Minimization for
#   Security: A Simple, Reproducible and Secure Application
#   Installation Methodology - Updated for the Solaris 9
#   Operating Environment
#
# and should be used as a guideline for developing minimized
# Solaris build specifications.
#
# The article may be found online at
#     http://www.sun.com/security/blueprints
#        or
#     http://www.sun.com/blueprints/browsesubject.html#security

# install_type MUST be first
install_type    initial_install

# Install Solaris with the smallest cluster possible

cluster         SUNWCreq

# Since this is intended to be a minimal server, the Solaris Core software
# cluster was used.  However, in many cases, a few additional packages are
# required to make the system maintainable.

package		SUNWlibC	add
package		SUNWlibCx	add

# The two packages SUNWlibms and SUNWlbmx are required to install and
# run iWS. They are, however, included in the SUNWCreq cluster and don't
# need to be explicitly added to this profile.

# The core software cluster does not include the Secure Shell software, so
# it must be added here.

package		SUNWsshcu	add
package		SUNWsshdr	add
package		SUNWsshdu	add
package		SUNWsshr	add
package		SUNWsshu	add

# Secure Shell also depends on the zlib libraries

package		SUNWzlib	add
package		SUNWzlibx	add

# For X11 X-tunneling to work over Secure Shell the following
# packages are needed:

#package		SUNWdtbax	add
#package		SUNWmfrun	add
#package		SUNWxwplt	add
#package		SUNWxwplx	add
#package		SUNWxwrtl	add
#package		SUNWxwrtx	add
#package		SUNWxwice	add
#package		SUNWxwicx	add

# To use the 'startconsole' functionality, the Netscape Communicator
# package must be installed. If this is not installed iWS can
# still be managed remotely - which is the recommended configuration.
# This will, however, produce an error during installation. The
# error is not fatal and is documented in the BluePrint article.

#package		NSCPcom		add

# The following packages are needed to support the Network Time Protocol
# (NTP) software.

#package		SUNWntpr	add
#package		SUNWntpu	add

# The following packages are needed to support truss

#package		SUNWtoo		add
#package		SUNWtoox	add

# The following packages are needed to support Process Accounting.

#package		SUNWaccr	add
#package		SUNWaccu	add

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

