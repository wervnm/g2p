#!/bin/bash

# Sets variables for the script.
tempDir=$HOME/Desktop/.g2pts
archiveName=$HOME/Desktop/GoToMyPC_MUTS.tgz
rdScript=$tempDir/G2P_Daemon.sh
g2pPlist=/Library/Preferences/com.citrixonline.GoToMyPC.plist
#
# Cleanup
cleanup() {
    rm ~/Desktop/.g2pts/G2P_Before.plist
    rm ~/Desktop/.g2pts/G2P_After.plist
    rm ~/Desktop/.g2pts/G2P_Daemon.sh
    rmdir ~/Desktop/.g2pts
}
trap "cleanup" EXIT
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
osascript -e 'tell app "System Events" to display dialog "Waiting 60 seconds to allow upgrade"'
sleep 60
cp $g2pPlist $tempDir/G2P_After.plist

tar -cz --exclude="G2P_Daemon.sh" -f $archiveName -C $tempDir .
