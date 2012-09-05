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
# Copyright 2005 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"@(#)Makefile	1.2	05/03/11 SMI"
#
# Makefile for Sysidcfg/Solaris_2.5.1
#
# include global definitions
include ../../Makefile.master
#

LINKPATH= Sysidcfg/Solaris_2.5.1

DIST_ROOT= ../../$(ROOT)/Sysidcfg/Solaris_2.5.1

S2.5.1_FILES= \
		sysidcfg

all install Solaris_2.5.1: $(S2.5.1_FILES) $(DIST_ROOT) \
		$(S2.5.1_FILES:%=$(DIST_ROOT)/%)

top: $(S2.5.1_FILES)

$(S2.5.1_FILES:%=$(DIST_ROOT)/%): $$(@F) $(DIST_ROOT)
	$(CP) $(@:$(DIST_ROOT)/%=%) $@
	$(CHMOD) $(READMODE) $@
	( cd $(DIST_ROOT)/../.. ; $(RM) $(@:$(DIST_ROOT)/%=%) ; \
	$(SYMLINK) $(LINKPATH)/$(@:$(DIST_ROOT)/%=%) $(@:$(DIST_ROOT)/%=%) )

include ../../Makefile.targs

clean clobber: FRC

FRC:
