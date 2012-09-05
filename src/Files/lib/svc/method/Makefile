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
# ident	"@(#)Makefile	1.2	07/05/31 SMI"
#
# Makefile for Files/lib/svc/method
#
# include global definitions
include ../../../../Makefile.master
#

NDDCONFIG_LINK= nddconfig
NDDCONFIG_SC_LINK= nddconfig-15k_sc

LINKS_ROOT= ../../../../$(ROOT)/Files/lib/svc/method

DIST_ROOT=  ../../../../$(ROOT)/Files/etc/init.d/nddconfig
DIST_ROOT_SC=  ../../../../$(ROOT)/Files/etc/init.d/nddconfig-15k_sc

NDDCONFIG_FILE=  ../../../etc/init.d/nddconfig
NDDCONFIG_SC_FILE=  ../../../etc/init.d/nddconfig-15k_sc

all install network: $(LINKS_ROOT) $(NDDCONFIG_LINK) $(NDDCONFIG_SC_LINK)

top:

$(LINKS_ROOT):
	[ -d $@ ] || $(MKDIR) $@

$(NDDCONFIG_LINK): $(INIT_EXE_FILES:%=$(DIST_ROOT)/%) $(LINKS_ROOT) \
		$(NDDCONFIG_FILE)
	$(RM) $@
	$(LN) $(NDDCONFIG_FILE) $@
	$(CHMOD) $(EXEMODE) $@
	$(RM) $(LINKS_ROOT)/$@
	( cd $(LINKS_ROOT); $(LN) $(NDDCONFIG_FILE) $@; $(CHMOD) $(EXEMODE) $@ )

$(NDDCONFIG_SC_LINK): $(INIT_EXE_FILES:%=$(DIST_ROOT_SC)/%) $(LINKS_ROOT) \
		$(NDDCONFIG_SC_FILE)
	$(RM) $@
	$(LN) $(NDDCONFIG_SC_FILE) $@
	$(CHMOD) $(EXEMODE) $@
	$(RM) $(LINKS_ROOT)/$@
	( cd $(LINKS_ROOT); $(LN) $(NDDCONFIG_SC_FILE) $@; \
		$(CHMOD) $(EXEMODE) $@ )

include ../../../../Makefile.targs

clean clobber: $(SUB_DIRS) FRC

FRC:
