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
# ident	"@(#)Makefile	1.5	07/05/31 SMI"
#
# Makefile for Files/etc/init.d
#
# include global definitions
include ../../../Makefile.master
#

INIT_EXE_FILES= \
		nddconfig \
		nddconfig-15k_sc \
		set-tmp-permissions \
		sms_arpconfig \
		swapadd


DIST_ROOT= ../../../$(ROOT)/Files/etc/init.d

all install init.d : $(INIT_EXE_FILES) $(DIST_ROOT) \
	$(INIT_EXE_FILES:%=$(DIST_ROOT)/%)

top: $(INIT_EXE_FILES)

$(INIT_EXE_FILES:%=$(DIST_ROOT)/%): $$(@F) $(DIST_ROOT)
	$(CP) $(@:$(DIST_ROOT)/%=%) $@
	$(CHMOD) $(EXEMODE) $@

include ../../../Makefile.targs

clean clobber: FRC

FRC:
