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
# ident	"@(#)Makefile	1.4	07/01/30 SMI"
#
# Makefile for Profiles
#
# include global definitions
include ../Makefile.master
#

READ_FILES= \
		core.profile \
		developer.profile \
		end-user.profile \
		entire-distribution.profile \
		minimal-SunFire_Domain-Apps-Solaris8.profile \
		minimal-SunFire_Domain-Apps-Solaris9.profile \
		minimal-SunFire_Domain-NoX-Solaris8.profile \
		minimal-SunFire_Domain-NoX-Solaris9.profile \
		minimal-SunFire_Domain-X-Solaris8.profile \
		minimal-SunFire_Domain-X-Solaris9.profile \
		minimal-Sun_ONE-WS-Solaris26.profile \
		minimal-Sun_ONE-WS-Solaris7-64bit.profile \
		minimal-Sun_ONE-WS-Solaris8-64bit.profile \
		minimal-Sun_ONE-WS-Solaris9-64bit.profile \
		minimal-Sun_ONE-WS-Solaris9.profile \
		minimal-ldm_control.profile \
		oem.profile \
		reduced-networking.profile 

DIST_ROOT= ../$(ROOT)/Profiles

all install Profiles: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%)

top: $(READ_FILES)

include ../Makefile.targs

clean clobber: FRC

FRC:
