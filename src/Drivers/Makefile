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
# ident	"@(#)Makefile	1.20	07/02/08 SMI"
#
# Makefile for Drivers
#
# include global definitions
include ../Makefile.master
#

DRV_TMPL= \
		driver.init

DRV_FILES= \
		audit_private.funcs \
		audit_public.funcs \
		cis-config.driver \
		cis-hardening.driver \
		cis-secure.driver \
		clean.driver \
		clean_private.funcs \
		clean.run \
		common_log.funcs \
		common_misc.funcs \
		config.driver \
		driver_private.funcs \
		driver_public.funcs \
		driver.run \
		finish.init \
		hardening.driver \
		install-Sun_ONE-WS.driver \
		ldm_control-config.driver \
		ldm_control-hardening.driver \
		ldm_control-secure.driver \
		secure.driver \
		server-config.driver \
		server-hardening.driver \
		server-secure.driver \
		suncluster3x-config.driver \
		suncluster3x-hardening.driver \
		suncluster3x-secure.driver \
		sunfire_15k_sc-config.driver \
		sunfire_15k_sc-hardening.driver \
		sunfire_15k_sc-secure.driver \
		undo.driver \
		undo.funcs \
		undo.run \
		user.init.SAMPLE \
		user.run.SAMPLE

DIST_ROOT= ../$(ROOT)/Drivers

READ_FILES= $(DRV_FILES) $(DRV_TMPL)

all install Drivers: $(DRV_FILES) $(DRV_TMPL) $(DIST_ROOT) \
		$(READ_FILES:%=$(DIST_ROOT)/%)

top: $(DRV_FILES) $(DRV_TMPL)

include ../Makefile.targs

$(DRV_TMPL): $$(@:%=%.tmpl)
	$(RM) $@; \
		$(SED) -e "s/__VERSION__/$(VERSION)/g" \
		$(@:%=%.tmpl) | \
		$(SED) -e "s/__FULLNAME__/$(FULLNAME)/g" > $@

clean clobber: FRC
	$(RM) $(DRV_TMPL)

FRC:
