#
# Copyright 2005 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"@(#)Makefile	1.1	05/03/02 SMI"
#
# Makefile for man/sman4
#
# include global definitions
include ../../Makefile.master
#

READ_FILES= \
		audit_public_funcs.4 \
		common_log_funcs.4 \
		common_misc_funcs.4 \
		driver_funcs.4

DIST_ROOT= ../../$(ROOT)/man/sman4

all install sman4: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%)

top: $(READ_FILES)

include ../../Makefile.targs

clean clobber: FRC

FRC:
