#!/bin/sh
#jenseneverest Motor Updater
clear
echo ""
echo "        ***************************************************"
echo "        *                                                 *"
echo "        *        MOTORISED CHANNEL LIST INSTALLER         *"
echo "        *                                                 *"
echo "        *    By jenseneverest   @linuxsat-support.com     *"
echo "        *                                                 *"
echo "        *                                                 *"
echo "        *                                                 *"
echo "        *                                                 *"
echo "        ***************************************************"
echo ""
sleep 8

MOTOR='/tmp/motor'
BODIR='/etc/enigma2/'
CATS='https://github.com/jenseneverest/motor/raw/master/Catseye.zip'
CIEF='https://github.com/jenseneverest/motor/raw/master/Ciefp.zip'
DONA='https://github.com/jenseneverest/motor/raw/master/Dona.zip'
GIOP='https://github.com/jenseneverest/motor/raw/master/GioppyGio.zip'
JPRE='https://github.com/jenseneverest/motor/raw/master/Jprekpa2.zip'
MORP='https://github.com/jenseneverest/motor/raw/master/Morph883.zip'
SATA='https://github.com/jenseneverest/motor/raw/master/Sat-An.zip'
SATV='https://github.com/jenseneverest/motor/raw/master/Satvenus.zip'
VHAN='https://github.com/jenseneverest/motor/raw/master/Vhannibal.zip'

mkdir -p $MOTOR && cd $MOTOR
choice=0
while [ $choice -ne 22 ]

do

clear
echo ""
echo "                *****************************************************"
echo "                #                                                   #"
echo "                #      --  Choose a full motorised list  --         #"
echo "                #          Pick a number and press enter            #"
echo "                #                                                   #"
echo "                #    1) Catseye                                     #"
echo "                #    2) Ciefp                                       #"
echo "                #                                                   #"
echo "                #   19) STD Region / HELP / Area not listed         #"
echo "                #                                                   #"
echo "                #   22) EXIT & REBOOT BOX                           #"
echo "                #                                                   #"
echo "                *****************************************************"
echo ""
echo -n "                Choice: "
read choice

case "$choice" in

 1 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $CATS && sleep 2 && unzip Catseye.zip && sleep 2 && cd Catseye && cp -p satellites.xml /$BODIR && rm -rf *.xml && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
echo
echo 
echo ----------------------------------------------------
echo 
echo "            ...BOUQUETS UPDATED...                "
echo 
echo ----------------------------------------------------
echo 



esac 
done 
