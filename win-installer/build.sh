#!/bin/sh

set -e
set -c

wine /home/wix/wix/heat.exe dir stage -t set-platform.xslt -gg -cg PravdaCLIComponent -ke -srd -dr PravdaCLI -sfrag -o PravdaCLI.wxs
wine /home/wix/wix/candle.exe PravdaCLI.wxs
wine /home/wix/wix/candle.exe pravda.wxs
wine /home/wix/wix/light.exe -b pravda PravdaCLI.wixobj pravda.wixobj -sval -o pravda.msi

