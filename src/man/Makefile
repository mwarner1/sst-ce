#
# Copyright 2005 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"@(#)Makefile	1.1	05/03/02 SMI"
#
# Makefile for man
#
# include global definitions
include ../Makefile.master
#

SUB_DIRS= \
		sman1m \
		sman4 \
		sman7

READ_FILES= \
		windex

DIST_ROOT= ../$(ROOT)/man

all install man: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%) \
	$(SUB_DIRS)

top: $(READ_FILES) $(SUB_DIRS)

include ../Makefile.targs

clean clobber: $(SUB_DIRS) FRC

FRC:
