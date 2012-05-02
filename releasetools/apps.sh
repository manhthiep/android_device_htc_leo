#!/bin/sh
# This script is included in squisher
# use to remove unwanted stuff in the otapackage

echo "Leo has limited diskspace!"
echo "Removing unwanted stuff..."

rm -rf $REPACK/ota/system/media/video

cd $REPACK/ota/system/app

rm VideoEditor.apk
rm RomManager.apk
rm LiveWallpapers.apk
rm Galaxy4.apk
rm HoloSpiralWallpaper.apk
rm MagicSmokeWallpapers.apk
rm PhaseBeam.apk