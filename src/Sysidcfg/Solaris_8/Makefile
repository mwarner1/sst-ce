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
# ident	"@(#)Makefile	1.1	05/03/02 SMI"
#
# Makefile for Sysidcfg/Solaris_8
#
# include global definitions
include ../../Makefile.master
#

READ_FILES= \
		sysidcfg

DIST_ROOT= ../../$(ROOT)/Sysidcfg/Solaris_8

all install Solaris_8: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%)

top: $(READ_FILES)

include ../../Makefile.targs

clean clobber: FRC

FRC:
