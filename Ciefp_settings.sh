#!/bin/sh
#jenseneverest Ciefp-Settings Updater
CIFDIR='/hdd/Ciefp-Settings'
BOUQUETDIR='/etc/enigma2/'
mkdir -p $CIFDIR/temp
# Clear temp directory
rm -R -f $CIFDIR/temp/* 2>/dev/null
cd $CIFDIR/temp
curl -LJO https://github.com/ciefp/ciefpsettings-enigma2/archive/master.zip
sleep 2
unzip ciefpsettings-enigma2-master.zip
sleep 2
rm -rf $CIFDIR/temp/ciefpsettings-enigma2-master/ciefp-E2-motor-68E-30W-VOD/satellites.xml
rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
cp -p $CIFDIR/temp/ciefpsettings-enigma2-master/ciefp-E2-motor-68E-30W-VOD/* /$BOUQUETDIR
# Reload bouquets
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0
echo
echo 
echo ----------------------------------------------------
echo 
echo "            ...BOUQUETS UPDATED...                "
echo 
echo ----------------------------------------------------
echo 
exit 0