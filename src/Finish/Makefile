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
# ident	"@(#)Makefile	1.31	07/09/25 SMI"
#
# Makefile for Finish
#
# include global definitions
include ../Makefile.master
#

READ_FILES= \
		disable-IIim.fin \
		disable-ab2.fin \
		disable-apache.fin \
		disable-apache2.fin \
		disable-appserv.fin \
		disable-asppp.fin \
		disable-autoinst.fin \
		disable-automount.fin \
		disable-dhcpd.fin \
		disable-directory.fin \
		disable-dmi.fin \
		disable-dtlogin.fin \
		disable-face-log.fin \
		disable-ipv6.fin \
		disable-kdc.fin \
		disable-keyboard-abort.fin \
		disable-keyserv-uid-nobody.fin \
		disable-ldap-client.fin \
		disable-lp.fin \
		disable-mesg.fin \
		disable-mipagent.fin \
		disable-named.fin \
		disable-nfs-client.fin \
		disable-nfs-server.fin \
		disable-nis-client.fin \
		disable-nscd-caching.fin \
		disable-picld.fin \
		disable-power-mgmt.fin \
		disable-ppp.fin \
		disable-preserve.fin \
		disable-remote-root-login.fin \
		disable-rhosts.fin \
		disable-routing.fin \
		disable-rpc.fin \
		disable-samba.fin \
		disable-sendmail.fin \
		disable-serial-login.fin \
		disable-slp.fin \
		disable-sma.fin \
		disable-smcwebserver.fin \
		disable-snmp.fin \
		disable-spc.fin \
		disable-ssh-root-login.fin \
		disable-syslogd-listen.fin \
		disable-system-accounts.fin \
		disable-uucp.fin \
		disable-vold.fin \
		disable-wbem.fin \
		disable-xdmcp.fin \
		disable-xfs.fin \
		disable-xserver-listen.fin \
		enable-32bit-kernel.fin \
		enable-account-lockout.fin \
		enable-bart.fin \
		enable-bsm.fin \
		enable-coreadm.fin \
		enable-cronlog.fin \
		enable-ftp-debuglog.fin \
		enable-ftp-syslog.fin \
		enable-ftpaccess.fin \
		enable-inetd-syslog.fin \
		enable-ipfilter.fin \
		enable-ldmd.fin \
		enable-password-changes.fin \
		enable-password-history.fin \
		enable-priv-nfs-ports.fin \
		enable-process-accounting.fin \
		enable-rfc1948.fin \
		enable-sar.fin \
		enable-ssh-root-login.fin \
		enable-stack-protection.fin \
		enable-tcpwrappers.fin \
		enable-xscreensaver.fin \
		install-Sun_ONE-WS.fin \
		install-at-allow.fin \
		install-authlog.fin \
		install-connlog.fin \
		install-fix-modes.fin \
		install-ftpusers.fin \
		install-jass.fin \
		install-ldm.fin \
		install-local-syslog.fin \
		install-loginlog.fin \
		install-md5.fin \
		install-nddconfig.fin \
		install-newaliases.fin \
		install-openssh.fin \
		install-recommended-patches.fin \
		install-sadmind-options.fin \
		install-security-mode.fin \
		install-shells.fin \
		install-strong-permissions.fin \
		install-sulog.fin \
		install-templates.fin \
		minimize-Sun_ONE-WS.fin \
		print-jass-environment.fin \
		print-jumpstart-environment.fin \
		print-package-files.fin \
		print-rhosts.fin \
		print-sgid-files.fin \
		print-suid-files.fin \
		print-unowned-objects.fin \
		print-world-writable-objects.fin \
		remove-unneeded-accounts.fin \
		s15k-exclude-domains.fin \
		s15k-sms-secure-failover.fin \
		s15k-sms-override.fin \
		s15k-static-arp.fin \
		set-banner-dtlogin.fin \
		set-banner-ftpd.fin \
		set-banner-sendmail.fin \
		set-banner-sshd.fin \
		set-banner-telnetd.fin \
		set-calendar-localonly.fin \
		set-calendar-open.fin \
		set-dtlogin-localonly.fin \
		set-dtlogin-open.fin \
		set-failed-logins.fin \
		set-flexible-crypt.fin \
		set-ftpd-umask.fin \
		set-greeter-warning.fin \
		set-grub-password.fin \
		set-log-file-permissions.fin \
		set-login-retries.fin \
		set-lp-localonly.fin \
		set-lp-open.fin \
		set-oem-banner.fin \
		set-power-restrictions.fin \
		set-rmmount-nosuid.fin \
		set-root-group.fin \
		set-root-home-dir.fin \
		set-root-password.fin \
		set-rpc-localonly.fin \
		set-rpc-open.fin \
		set-smcwebserver-localonly.fin \
		set-smcwebserver-open.fin \
		set-ssh-config.fin \
		set-strict-password-checks.fin \
		set-sys-suspend-restrictions.fin \
		set-system-umask.fin \
		set-term-type.fin \
		set-tmpfs-limit.fin \
		set-ttdb-localonly.fin \
		set-ttdb-open.fin \
		set-user-password-reqs.fin \
		set-user-umask.fin \
		set-wbem-localonly.fin \
		set-wbem-open.fin \
		suncluster3x-set-nsswitch-conf.fin \
		update-at-deny.fin \
		update-cron-allow.fin \
		update-cron-deny.fin \
		update-cron-log-size.fin \
		update-inetd-conf.fin

DIST_ROOT= ../$(ROOT)/Finish

all install Finish: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%)

top: $(READ_FILES)

include ../Makefile.targs

clean clobber: FRC

FRC:
