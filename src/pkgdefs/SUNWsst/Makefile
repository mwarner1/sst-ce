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
# Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"@(#)Makefile	1.6	06/05/17 SMI"
#

#
include ../../Makefile.master
#

TMPLFILES=	pkginfo.tmpl

DATAFILES=	copyright \
		depend \
		preremove \
		tsolinfo

PROTOTYPE=	prototype_com

PACKAGE:sh=	basename `pwd`
PACKAGEDIR:sh=	dirname `pwd`
PACKAGEROOT=	$(PACKAGEDIR)/..

DIST_ROOT=	$(PACKAGEROOT)/$(PROTO_ROOT)
PKGARCHIVE=	$(PACKAGEROOT)/$(RELEASESDIR)

CLOBBERFILES=	$(TMPLFILES:%.tmpl=%)
CLEANFILES=	$(CLOBBERFILES)

all install SUNWsst: $(DATAFILES) $(TMPLFILES) $(TMPLFILES:%.tmpl=%) \
		$(PROTOTYPE) pkg

top: $(DATAFILES) $(TMPLFILES) $(TMPLFILES:%.tmpl=%)

pkg: $(DATAFILES) $(PROTOTYPE) $(TMPLFILES) $(TMPLFILES:%.tmpl=%) \
		$(PKGARCHIVE) FRC
	$(PKGMK) -f $(PROTOTYPE) -d $(PKGARCHIVE) -r $(DIST_ROOT) -o $(PACKAGE)
	$(PKGTRANS) -n -o -s $(PKGARCHIVE) $(PKGARCHIVE)/$(PACKAGE).pkg $(PACKAGE)

$(PKGARCHIVE):
	[ -d $(PKGARCHIVE) ] || mkdir -p $(PKGARCHIVE)

$(TMPLFILES:%.tmpl=%): $$(@:%=%.tmpl) ../../Makefile.master
	$(RM) $@; $(SED) -e "s/__VERSION__/$(VERSION)/g" $(@:%=%.tmpl) > $@

clobber clean: FRC
	-$(RM) $(CLOBBERFILES) $(CLEANFILES)

FRC:
