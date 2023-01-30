#!/usr/bin/sh
pushd ${ANDROID_HOME}/emulator
./emulator -list-avds | cat -n
printf "Select AVD: "
read index
avd=$(./emulator -list-avds | sed "${index}q;d")
echo "Selected $avd"
./emulator -netdelay none -netspeed full -avd $avd
popd
