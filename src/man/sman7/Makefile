#
# Copyright 2005 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"@(#)Makefile	1.5	05/07/19 SMI"
#
# Makefile for man/sman7
#
# include global definitions
include ../../Makefile.master
#

READ_FILES= \
		config.driver.7 \
		server-secure.driver.7 \
		hardening.driver.7 \
		secure.driver.7 \
		security_drivers.7 \
		suncluster3x-secure.driver.7 \
		sunfire_15k_sc-secure.driver.7

DIST_ROOT= ../../$(ROOT)/man/sman7

all install sman7: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%)

top: $(READ_FILES)

include ../../Makefile.targs

clean clobber: FRC

FRC:
