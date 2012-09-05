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
# Copyright 2007 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"@(#)minimal-ldm_control.profile	1.10	07/06/28 SMI"
#

# ----------------------------------------------------------------------------
# This profile is based on a meta-cluster that is only valid for Solaris 10
# operating system and newer.  This profile will not work on older versions
# of the operating system.
# ----------------------------------------------------------------------------

# install_type MUST be first.
install_type    initial_install

# Start with the minimal required number of packages, Core Distribution.
cluster         SUNWCreq

# SUNWldomu should be in SUNWCreq, but isn't there for Solaris 10 11/06.
# SUNWldomr is in SUNWCreq and both SUNWldom* packages are in SUNWCldom.
# This has been fixed in NV58 (Sun Request ID 6484072).
cluster         SUNWCldom       add

# The Core software cluster does not include Secure Shell software, so
# it must be added here.
cluster		SUNWCssh	add

# Add SUNWgzip to support installation or upgrade of LDoms software.
# Not required for operation of LDoms after LDoms installation is complete.
package         SUNWgzip        add

# To support Process Accounting, used by enable-process-accounting.fin
cluster		SUNWCacc	add

# To support Basic Auditing and Reporting Tool (BART), used by enable-bart.fin
package         SUNWbart        add

# Add this cluster when using Solaris Management Agent (SMA) SNMP with LDoms:
#cluster         SUNWCsma        add

# Add Sun Web Console Cluster and dependencies
# Package order is important as most-dependent packages must be last.
# Packages SUNWtcatu, SUNWj3rt, and SUNWj3dev are no longer required and will
# be removed from the package dependency list in a future release.
#package         SUNWctpls	add
#package         SUNWmfrun	add
#package         SUNWxwrtl	add
#package         SUNWxwice	add
#package         SUNWxwfnt	add
#package         SUNWxwplr	add
#package         SUNWxwplt	add
#package         SUNWj3rt	add
#package         SUNWj3dev	add
#package         SUNWj5rt	add
#package         SUNWj5dev	add
#package         SUNWjhrt	add
#package         SUNWjhdev	add
#package         SUNWtcatu	add
#cluster         SUNWCmco	add


# Define how the disk is used instead of using default values.
#
# General Purpose Server.  Separating /var in another filesystem prevents
# problems caused by a full or corrupt root filesystem.  The significant
# amount of swap space can also help protect against certain denial of
# service attacks.
#
# partitioning	explicit
#filesys	rootdisk.s3	1000	/var
filesys		rootdisk.s1	1000	swap
filesys		rootdisk.s0	free	/

# Install system as standalone.
system_type	standalone

