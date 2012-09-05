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
# ident	"@(#)Makefile	1.32	07/09/25 SMI"
#
# Makefile for Audit
#
# include global definitions
include ../Makefile.master

READ_FILES= \
		check-extended-file-attributes.aud \
		check-gids-unique.aud \
		check-hidden-files.aud \
		check-home-permissions.aud \
		check-include-nis-map.aud \
		check-netrc-files.aud \
		check-null-passwords.aud \
		check-password-file-permissions.aud \
		check-root-path.aud \
		check-uids-unique.aud \
		check-world-writable-files.aud \
		disable-IIim.aud \
		disable-ab2.aud \
		disable-apache.aud \
		disable-apache2.aud \
		disable-appserv.aud \
		disable-asppp.aud \
		disable-autoinst.aud \
		disable-automount.aud \
		disable-dhcpd.aud \
		disable-directory.aud \
		disable-dmi.aud \
		disable-dtlogin.aud \
		disable-face-log.aud \
		disable-ipv6.aud \
		disable-kdc.aud \
		disable-keyboard-abort.aud \
		disable-keyserv-uid-nobody.aud \
		disable-ldap-client.aud \
		disable-lp.aud \
		disable-mesg.aud \
		disable-mipagent.aud \
		disable-named.aud \
		disable-nfs-client.aud \
		disable-nfs-server.aud \
		disable-nis-client.aud \
		disable-nscd-caching.aud \
		disable-picld.aud \
		disable-power-mgmt.aud \
		disable-ppp.aud \
		disable-preserve.aud \
		disable-remote-root-login.aud \
		disable-rhosts.aud \
		disable-routing.aud \
		disable-rpc.aud \
		disable-samba.aud \
		disable-sendmail.aud \
		disable-serial-login.aud \
		disable-slp.aud \
		disable-sma.aud \
		disable-smcwebserver.aud \
		disable-snmp.aud \
		disable-spc.aud \
		disable-ssh-root-login.aud \
		disable-syslogd-listen.aud \
		disable-system-accounts.aud \
		disable-uucp.aud \
		disable-vold.aud \
		disable-wbem.aud \
		disable-xdmcp.aud \
		disable-xfs.aud \
		disable-xserver-listen.aud \
		enable-32bit-kernel.aud \
		enable-account-lockout.aud \
		enable-bart.aud \
		enable-bsm.aud \
		enable-coreadm.aud \
		enable-cronlog.aud \
		enable-ftp-debuglog.aud \
		enable-ftp-syslog.aud \
		enable-ftpaccess.aud \
		enable-inetd-syslog.aud \
		enable-ipfilter.aud \
		enable-ldmd.aud \
		enable-password-changes.aud \
		enable-password-history.aud \
		enable-priv-nfs-ports.aud \
		enable-process-accounting.aud \
		enable-rfc1948.aud \
		enable-sar.aud \
		enable-ssh-root-login.aud \
		enable-stack-protection.aud \
		enable-tcpwrappers.aud \
		enable-xscreensaver.aud \
		install-Sun_ONE-WS.aud \
		install-at-allow.aud \
		install-authlog.aud \
		install-connlog.aud \
		install-fix-modes.aud \
		install-ftpusers.aud \
		install-jass.aud \
		install-ldm.aud \
		install-local-syslog.aud \
		install-loginlog.aud \
		install-md5.aud \
		install-nddconfig.aud \
		install-newaliases.aud \
		install-openssh.aud \
		install-recommended-patches.aud \
		install-sadmind-options.aud \
		install-security-mode.aud \
		install-shells.aud \
		install-strong-permissions.aud \
		install-sulog.aud \
		install-templates.aud \
		minimize-Sun_ONE-WS.aud \
		print-jass-environment.aud \
		print-jumpstart-environment.aud \
		print-rhosts.aud \
		print-package-files.aud \
		print-sgid-files.aud \
		print-suid-files.aud \
		print-unowned-objects.aud \
		print-world-writable-objects.aud \
		remove-unneeded-accounts.aud \
		s15k-exclude-domains.aud \
		s15k-sms-secure-failover.aud \
		s15k-sms-override.aud \
		s15k-static-arp.aud \
		set-banner-dtlogin.aud \
		set-banner-ftpd.aud \
		set-banner-sendmail.aud \
		set-banner-sshd.aud \
		set-banner-telnetd.aud \
		set-calendar-localonly.aud \
		set-calendar-open.aud \
		set-dtlogin-localonly.aud \
		set-dtlogin-open.aud \
		set-failed-logins.aud \
		set-flexible-crypt.aud \
		set-ftpd-umask.aud \
		set-greeter-warning.aud \
		set-grub-password.aud \
		set-log-file-permissions.aud \
		set-login-retries.aud \
		set-lp-localonly.aud \
		set-lp-open.aud \
		set-oem-banner.aud \
		set-power-restrictions.aud \
		set-rmmount-nosuid.aud \
		set-root-group.aud \
		set-root-home-dir.aud \
		set-root-password.aud \
		set-rpc-localonly.aud \
		set-rpc-open.aud \
		set-smcwebserver-localonly.aud \
		set-smcwebserver-open.aud \
		set-ssh-config.aud \
		set-strict-password-checks.aud \
		set-sys-suspend-restrictions.aud \
		set-system-umask.aud \
		set-term-type.aud \
		set-tmpfs-limit.aud \
		set-ttdb-localonly.aud \
		set-ttdb-open.aud \
		set-user-password-reqs.aud \
		set-user-umask.aud \
		set-wbem-localonly.aud \
		set-wbem-open.aud \
		suncluster3x-set-nsswitch-conf.aud \
		update-at-deny.aud \
		update-cron-allow.aud \
		update-cron-deny.aud \
		update-cron-log-size.aud \
		update-inetd-conf.aud

DIST_ROOT= ../$(ROOT)/Audit

all install Audit: $(READ_FILES) $(DIST_ROOT) $(READ_FILES:%=$(DIST_ROOT)/%)

top: $(READ_FILES)

include ../Makefile.targs

clean clobber: FRC

FRC:
