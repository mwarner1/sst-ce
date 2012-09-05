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
# ident	"@(#)Makefile	1.7	07/05/07 SMI"
#
# Makefile for Files/etc/ipf
#
# include global definitions
include ../../../Makefile.master
#

READ_FILES= \
                ipf.conf \
                ipf.conf-server \
                ipf-cp1500.conf-15k_sc \
                ipf-cp2140.conf-15k_sc


DIST_ROOT= ../../../$(ROOT)/Files/etc/ipf

all install ipf: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%)

top: $(READ_FILES)

include ../../../Makefile.targs

clean clobber: FRC

FRC:
