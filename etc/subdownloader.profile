# Firejail profile for subdownloader
# Description: Automatic download/upload of subtitles using fast hashing
# This file is overwritten after every install/update
# Persistent local customizations
include subdownloader.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/SubDownloader
noblacklist ${VIDEOS}

# Allow python (blacklisted by disable-interpreters.inc)
include allow-python2.inc
include allow-python3.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-usr-share-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
netfilter
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-cache
private-dev
private-etc alternatives,fonts
private-tmp

#memory-deny-write-execute - breaks on Arch (see issue #1803)
