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
# ident	"@(#)Makefile	1.7	07/02/08 SMI"
#
# Makefile for system source
#
# include global definitions
include Makefile.master

# The make options for this workspace are as follows:
#	<dirname>  - Builds <dirname> with the "all" option.
#	all        - Build top, then populate the $DIST_ROOT directory
#	top        - Build the top-deltas of the current, and sub-,
#		     directory(ies) without producing packages.
#                    This will construct files that are created on the fly.
#	pkgdefs    - Build the SUNWsst package.
#	version    - Output the version string.
#	install    - Build "all" and build packaged deliverables.
#	MANIFEST   - Generate an MD5 MANIFEST file after a build all.
#	clean      - Remove files placed in the workspace, and the $(ROOT)
#	             directory.
#	clobber    - Same as "clean" but does not need to be.

DIST_ROOT=	$(ROOT)

NAMESUFFIX=	""

SUB_DIRS= \
	Audit \
	Documentation \
	Drivers \
	Files \
	Finish \
	Packages \
	Profiles \
	Sysidcfg \
	bin \
	lib \
	man

PACKAGEDIRS=	pkgdefs

READ_FILES= \
		LICENSE \
		nomatch.beg \
		rules.SAMPLE

MANIFEST=	MANIFEST

OS_DIR= 	OS
PATCH_DIR=	Patches

CSCOPE_FILES=	cscope.files

.KEEP_STATE:

#
all: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%) $(OS_DIR) \
		$(PATCH_DIR) $(SUB_DIRS) $(MANIFEST)

top: $(READ_FILES) $(SUB_DIRS)

install: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%) $(OS_DIR) \
		$(PATCH_DIR) $(SUB_DIRS) $(MANIFEST) $(PACKAGEDIRS) FRC
	( cd $(RELEASESDIR) ; \
	$(TAR) -cvf $(FULLNAME).pkg.tar $(PACKAGENAME).pkg ; \
	$(COMPRESS) -f $(FULLNAME).pkg.tar ; \
	$(MD5) $(FULLNAME).pkg.tar.Z | $(SED) 's/^md5/MD5/' > $(FULLNAME).pkg.tar.Z.md5 ; )

version:
	@echo $(VERSION)

$(PACKAGEDIRS): FRC
	@cd $@; pwd; $(MAKE) $(TARGET)

$(MANIFEST): FRC
	( cd $(ROOT);  \
	$(RM) $(MANIFEST) ; \
	$(FIND) . -type f ! -name $@ -exec $(MD5) {} \+ | $(SED) 's/^md5/MD5/' > $@ ; \
	$(CHMOD) $(READMODE) $@ )

$(OS_DIR) $(PATCH_DIR):
	[ -d $(ROOT)/$@ ] || \
		( $(RM) $(ROOT)/$@ ; $(MKDIR) $(ROOT)/$@ ; )

include Makefile.targs

clean clobber: $(SUB_DIRS) $(PACKAGEDIRS)
	$(RM) -r $(PROTO_ROOT)
	$(RM) -r $(RELEASESDIR)

cscope: FRC
	$(RM) $(CSCOPE_FILES)
	$(FIND) . -name s.\* -print  | $(PERL) -pe 's#SCCS/s.##' > $(CSCOPE_FILES)

FRC:
