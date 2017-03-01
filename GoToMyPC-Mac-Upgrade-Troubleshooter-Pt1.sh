#!/bin/bash

# Sets variables for the script.
tempDir=$HOME/Desktop/.g2pts
rdScript=$tempDir/G2P_Daemon.sh
g2pPlist=/Library/Preferences/com.citrixonline.GoToMyPC.plist
#
# Create tempDir
if [[ ! -e $tempDir ]]; then
    mkdir $tempDir
fi
#
# Create daemon restart script
touch "$rdScript"
echo "#!/bin/bash" >> $rdScript
echo "" >> $rdScript
echo "sudo launchctl stop com.citrixonline.GoToMyPC.CommAgent" >> $rdScript
echo "sleep 5" >> $rdScript
echo "sudo launchctl start com.citrixonline.GoToMyPC.CommAgent" >> $rdScript
#
# Copy .plist, restart daemon, and then copy again.
cp $g2pPlist $tempDir/G2P_Before.plist
osascript -e 'do shell script "sudo sh $HOME/Desktop/.g2pts/G2P_Daemon.sh >> $HOME/Library/Logs/com.citrixonline.g2pts.log 2>&1" with administrator privileges'
#
# The Automator script will now pause and wait for further input to collect G2P_After.plist and create the .tgz
