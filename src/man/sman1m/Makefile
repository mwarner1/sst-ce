#
# Copyright 2005 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"@(#)Makefile	1.1	05/03/02 SMI"
#
# Makefile for man/sman1m
#
# include global definitions
include ../../Makefile.master
#

READ_FILES= \
		Intro.1m \
		add-client.1m \
		jass-check-sum.1m \
		jass-execute.1m \
		make-jass-pkg.1m \
		rm-client.1m

DIST_ROOT= ../../$(ROOT)/man/sman1m

all install sman1m: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%)

top: $(READ_FILES)

include ../../Makefile.targs

clean clobber: FRC

FRC:
