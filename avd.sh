pushd ${ANDROID_HOME}/tools
./emulator -list-avds | cat -n
printf "Select AVD: "
read index
avd=$(./emulator -list-avds | sed "${index}q;d")
echo "Selected $avd"
./emulator -netdelay none -netspeed full -avd $avd
popd
