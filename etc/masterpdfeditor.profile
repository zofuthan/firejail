# Firejail profile for masterpdfeditor
# Description: A complete solution for creating and editing PDF files
# This file is overwritten after every install/update
# Persistent local customizations
include masterpdfeditor.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/Code Industry
noblacklist ${HOME}/.masterpdfeditor

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
ipc-namespace
machine-id
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

# disable-mnt
# private
private-bin masterpdfeditor*
private-cache
private-dev
private-etc fonts
# private-lib
private-tmp

# memory-deny-write-execute
noexec ${HOME}
noexec /tmp
