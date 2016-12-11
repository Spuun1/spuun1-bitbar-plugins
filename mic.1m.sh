#!/bin/bash
# <bitbar.title>Microphone Status</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author.github>Spuun1</bitbar.author.github>
# <bitbar.desc>Show microphone level status and bind it with keyboard shortcut</bitbar.desc>
# <bitbar.image>http://imgur.com/a/wy521</bitbar.image>
# <bitbar.dependencies>AppleScript,Automator</bitbar.dependencies>
#       
#       Create automator service named Mute Microphone:
#
#       Service receives: "no input" in "any application"
#
#               Run AppleScript:
#
#               if input volume of (get volume settings) = 0 then
#                       set level to 100
#               else
#                       set level to 0
#               end if
# 
#               set volume input volume level
#               do shell script "open -g bitbar://refreshPlugin?name=mic.*?.sh"
#
#       Bind to desired keyboard shortcut in: Preferences -> Keyboard -> Shortcuts -> Services -> "Mute Microphone".
#       
INPUT=`osascript -e 'input volume of (get volume settings)'`
if [[ $INPUT > 0 ]]; then
        echo "|templateImage=R0lGODlhEAAQAIABAAAAAP///yH+EUNyZWF0ZWQgd2l0aCBHSU1QACH5BAEKAAEALAAAAAAQABAAAAIqjA8Jx6za2kvRrHpdmCujPW1RF3oW+IgSCpkg+45yxVI04tL2Xed4yigAADs="
else
        echo "|templateImage=R0lGODlhEAAQAIABAAAAAP///yH+EUNyZWF0ZWQgd2l0aCBHSU1QACH5BAEKAAEALAAAAAAQABAAAAIkjI+pBrDa2jvRBbkis9ni530Jp3GdZI7aBX4pVYnj1Fb0jSMFADs="
fi
echo ---
echo "Microphone level: $INPUT"
echo ---
echo "Refresh | refresh=true"
