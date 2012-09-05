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
# Copyright 2009 Sun Microsystems, Inc.  All rights reserved
# All rights reserved.
#
#ident	"@(#).cshrc	2.5	02/04/12	SMI"
#
# This file is installed by JASS.  This is a sample file
# that can be adapted as needed. 

umask 022

set path=( /usr/bin /usr/sbin /usr/ccs/bin $path )

setenv MANPATH /usr/man

# Set up C shell environment:

if ( $?prompt ) then		# shell is interactive.

   set history=100		# previous commands to remember.
   set savehist=100		# number to save across sessions.
   set filec
   stty kill ^U
   stty erase ^H
   setenv system `hostname`     # set hostname
   set prompt="[$system`pwd`] " # set prompt
   alias       cd      'cd \!*; set prompt="[$system`pwd`] "'


endif

