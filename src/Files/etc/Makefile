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
# ident	"@(#)Makefile	1.11	07/01/02 SMI"
#
# Makefile for Files/etc
#
# include global definitions
include ../../Makefile.master
#

READ_FILES= \
		hosts.allow \
		hosts.allow-ldm_control \
		hosts.allow-server \
		hosts.allow-suncluster \
		hosts.allow-15k_sc \
		hosts.deny \
		issue \
		motd \
		sms_domain_arp \
		sms_sc_arp \
		syslog.conf

SUB_DIRS= \
		default \
		dt \
		ftpd \
		init.d \
		ipf \
		rc2.d \
		security

DIST_ROOT= ../../$(ROOT)/Files/etc

all install etc: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%) \
		$(SUB_DIRS)

top: $(READ_FILES) $(SUB_DIRS)

include ../../Makefile.targs

clean clobber: $(SUB_DIRS)

FRC:
