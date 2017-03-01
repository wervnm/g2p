#!/bin/bash

# Sets variables for the script.
tempDir=$HOME/Desktop/.g2pts
archiveName=$HOME/Desktop/GoToMyPC_MUTS.tgz
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
#
# Copy G2P_After.plist
cp $g2pPlist $tempDir/G2P_After.plist
#
# Create .tgz
tar -cz --exclude="G2P_Daemon.sh" -f $archiveName -C $tempDir .
