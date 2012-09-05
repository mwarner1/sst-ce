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
# ident	"@(#)Makefile	1.4	06/08/17 SMI"
#
# Makefile for lib/locale/C/LC_MESSAGES
#
# include global definitions
include ../../../../Makefile.master
#

PO_FILES= \
	add-client.po \
	jass-check-sum.po \
	jass.po \
	make-jass-pkg.po \
	rm-client.po

MO_FILES= $(PO_FILES:%.po=%.mo)

DIST_ROOT= ../../../../$(ROOT)/lib/locale/C/LC_MESSAGES

all install LC_MESSAGES: top $(DIST_ROOT) $(PO_FILES:%=$(DIST_ROOT)/%) \
		$(MO_FILES:%=$(DIST_ROOT)/%)

top: $(PO_FILES) $(MO_FILES)

$(PO_FILES:%=$(DIST_ROOT)/%) $(MO_FILES:%=$(DIST_ROOT)/%): $$(@F) $(DIST_ROOT)
	$(CP) $(@:$(DIST_ROOT)/%=%) $@
	$(CHMOD) $(READMODE) $@

$(MO_FILES): $$(@:%.mo=%.po)
	$(MSGFMT) -o $@ $(@:.mo=.po)
	$(CHMOD) $(FILEMODE) $@

include ../../../../Makefile.targs

clean clobber: FRC
	$(RM) $(MO_FILES)
	( cd $(DIST_ROOT) ; $(RM) $(MO_FILES) )

FRC:
