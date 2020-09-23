#!/bin/sh
set -e
WORKING_DIR=`pwd`
THIS_PATH=`readlink -f $0`
cd `dirname ${THIS_PATH}`
FULL_PATH=`pwd`/CodeTasty
cd ${WORKING_DIR}
cat <<EOS > CodeTasty.desktop
[Desktop Entry]
Name=CodeTasty IDE
Name[en_US]=CodeTasty IDE
Comment=Unofficial CodeTasty application for Linux
Exec="${FULL_PATH}/CodeTasty"
Terminal=false
Categories=Office;TextEditor;Utility;Development
Type=Application
Icon=${WORKING_DIR}/icon.png
StartupWMClass=$1
EOS
chmod +x CodeTasty.desktop
## This can be updated if this path is not valid. 
cp -p CodeTasty.desktop ~/.local/share/applications
