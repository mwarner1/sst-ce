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
# ident	"@(#)Makefile	1.4	06/12/21 SMI"
#
# Makefile for Files/etc/security
#
# include global definitions
include ../../../Makefile.master
#

READ_FILES= \
		audit_class+5.8 \
		audit_class+5.9 \
		audit_class+5.10 \
		audit_class+5.11 \
		audit_control \
		audit_control-cis \
		audit_event+5.8 \
		audit_event+5.9 \
		audit_event+5.10 \
		audit_event+5.11 \
		audit_startup-cis

DIST_ROOT= ../../../$(ROOT)/Files/etc/security

all install security: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%)

top: $(READ_FILES)

include ../../../Makefile.targs

clean clobber: FRC

FRC:
