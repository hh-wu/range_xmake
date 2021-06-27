#!/bin/bash

getScriptPath () {
	echo ${0%/*}/
}
myPath=$(getScriptPath)

. ${myPath}/lib.sh

if [ -e /etc/os-release ]
then
    . /etc/os-release
else
    . /usr/lib/os-release
fi

echo_i "Update"
zypper update -y
assert_success $? "Failed to update" || exit 2

echo_i "Install packman repository"
zypper ar -cfp 90 http://ftp.gwdg.de/pub/linux/misc/packman/suse/${PRETTY_NAME// /_}/ packman
assert_success $? "Failed to install pacman repository" || exit 2

echo_i "Install tools, Qt and ffmpeg"
zypper --gpg-auto-import-keys install -y sudo make openssh rpm-build libQt6Gui6 libQt6Svg libQt6Core6 qt6-base qt6-svg ffmpeg-devel
assert_success $? "Failed to install tools, Qt and ffmpeg" || exit 2

