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
# ident	"@(#)Makefile	1.3	07/05/31 SMI"
#
# Makefile for Files/etc/rc2.d
#
# include global definitions
include ../../../Makefile.master
#


NDDCONFIG_LINK= S70nddconfig
NDDCONFIG_SC_LINK= S70nddconfig-15k_sc

SET_TMP_PERMISSIONS_LINKS= \
		S00set-tmp-permissions \
		S07set-tmp-permissions

SMS_ARPCONFIG_LINKS= \
		S73sms_arpconfig

SWAPADD_LINKS= \
		S73swapadd

LINKS_ROOT= ../../../$(ROOT)/Files/etc/rc2.d

DIST_ROOT= ../../../$(ROOT)/Files/etc/init.d

all install init.d : $(LINKS_ROOT) $(NDDCONFIG_LINK) $(NDDCONFIG_SC_LINK) \
	$(SET_TMP_PERMISSIONS_LINKS) $(SMS_ARPCONFIG_LINKS) $(SWAPADD_LINKS)

top:

$(LINKS_ROOT):
	[ -d $@ ] || $(MKDIR) $@

$(NDDCONFIG_LINK): $(INIT_EXE_FILES:%=$(DIST_ROOT)/%) $(LINKS_ROOT)
	$(RM) $@
	$(SYMLINK) ../init.d/nddconfig $@
	$(RM) $(LINKS_ROOT)/$@
	( cd $(LINKS_ROOT); $(SYMLINK) ../init.d/nddconfig $@ )

$(NDDCONFIG_SC_LINK): $(INIT_EXE_FILES:%=$(DIST_ROOT)/%) $(LINKS_ROOT)
	$(RM) $@
	$(SYMLINK) ../init.d/nddconfig-15k_sc $@
	$(RM) $(LINKS_ROOT)/$@
	( cd $(LINKS_ROOT); $(SYMLINK) ../init.d/nddconfig-15k_sc $@ )

$(SET_TMP_PERMISSIONS_LINKS): $(INIT_EXE_FILES:%=$(DIST_ROOT)/%) $(LINKS_ROOT)
	$(RM) $@
	$(SYMLINK) ../init.d/set-tmp-permissions $@
	$(RM) $(LINKS_ROOT)/$@
	( cd $(LINKS_ROOT); $(SYMLINK) ../init.d/set-tmp-permissions $@ )

$(SMS_ARPCONFIG_LINKS): $(INIT_EXE_FILES:%=$(DIST_ROOT)/%) $(LINKS_ROOT)
	$(RM) $@
	$(SYMLINK) ../init.d/sms_arpconfig $@
	$(RM) $(LINKS_ROOT)/$@
	( cd $(LINKS_ROOT); $(SYMLINK) ../init.d/sms_arpconfig $@ )

$(SWAPADD_LINKS): $(INIT_EXE_FILES:%=$(DIST_ROOT)/%) $(LINKS_ROOT)
	$(RM) $@
	$(SYMLINK) ../init.d/swapadd $@
	$(RM) $(LINKS_ROOT)/$@
	( cd $(LINKS_ROOT); $(SYMLINK) ../init.d/swapadd $@ )

include ../../../Makefile.targs

clean clobber: FRC

FRC:
