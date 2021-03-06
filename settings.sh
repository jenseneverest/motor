#!/bin/sh
#jenseneverest Motor Updater
clear
echo ""
echo "        ***************************************************"
echo "        *                                                 *"
echo "        *        MOTORISED CHANNEL LIST INSTALLER         *"
echo "        *                                                 *"
echo "        *                By jenseneverest                 *"
echo "        *                                                 *"
echo "        *             linuxsat-support.com                *"
echo "        *                                                 *"
echo "        *                                                 *"
echo "        ***************************************************"
echo ""
sleep 4
clear
echo ""
echo "      ********************************************************"
echo "      *                                                      *"
echo "      *    This will delete ALL your bouquets / channels     *"
echo "      *                                                      *"
echo "      *   it may be a good idea to backup your image first   *"
echo "      *                                                      *"
echo "      *             Moving on to the installer               *"
echo "      *                                                      *"
echo "      ********************************************************"
echo ""
sleep 6

MOTOR='/tmp/motor'
BODIR='/etc/enigma2/'
CATS='https://github.com/jenseneverest/motor/raw/master/Catseye.zip'
CIEF='https://github.com/jenseneverest/motor/raw/master/Ciefp.zip'
DONA='https://github.com/jenseneverest/motor/raw/master/Dona.zip'
GIOP='https://github.com/jenseneverest/motor/raw/master/GioppyGio.zip'
JPRE='https://github.com/jenseneverest/motor/raw/master/Jprekpa2.zip'
LIKR='https://github.com/jenseneverest/motor/raw/master/Likra.zip'
MORP='https://github.com/jenseneverest/motor/raw/master/Morph883.zip'
SATA='https://github.com/jenseneverest/motor/raw/master/Sat-An.zip'
SATV='https://github.com/jenseneverest/motor/raw/master/Satvenus.zip'
SORY='https://github.com/jenseneverest/motor/raw/master/Sorys.zip'
VHAN='https://github.com/jenseneverest/motor/raw/master/Vhannibal.zip'

mkdir -p $MOTOR && cd $MOTOR
choice=0
while [ $choice -ne 22 ]

do

clear
echo ""
echo "                *****************************************************"
echo "                #                                                   #"
echo "                #      ....CHOOSE A FULL MOTORISED LIST.....        #"
echo "                #          Pick a number and press enter            #"
echo "                #                                                   #"
echo "                #                                                   #"
echo "                #    1)  Catseye                                    #"
echo "                #    2)  Ciefp                                      #"
echo "                #    3)  Don@                                       #"
echo "                #    4)  GioppyGio                                  #"
echo "                #    5)  Jprekpa2                                   #"
echo "                #    6)  Likra                                      #"
echo "                #    7)  Morph883                                   #"
echo "                #    8)  Sat-An                                     #"
echo "                #    9)  Satvenus                                   #"
echo "                #   10)  Sorys                                      #"
echo "                #   11)  Vhannibal                                  #"
echo "                #                                                   #"
echo "                #                                                   #"
echo "                #   12)  EXIT - Makes no changes to your box        #"
echo "                #                                                   #"
echo "                *****************************************************"
echo ""
echo -n "                Choice: "
read choice

case "$choice" in

1 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $CATS && sleep 1 && unzip Catseye.zip && sleep 2 && cd Catseye 
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

2 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $CIEF && sleep 1 && unzip Ciefp.zip && sleep 2 && cd Ciefp 
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

3 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $DONA && sleep 1 && unzip Dona.zip && sleep 2 && cd Dona
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

4 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $GIOP && sleep 1 && unzip GioppyGio.zip && sleep 2 && cd GioppyGio
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

5 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $JPRE && sleep 1 && unzip Jprekpa2.zip && sleep 2 && cd Jprekpa2
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

6 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $LIKR && sleep 1 && unzip Likra.zip && sleep 2 && cd Likra
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

7 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $MORP && sleep 1 && unzip Morph883.zip && sleep 2 && cd Morph883 
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

8 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $SATA && sleep 1 && unzip Sat-An.zip && sleep 2 && cd Sat-An 
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

9 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $SATV && sleep 1 && unzip Satvenus.zip && sleep 2 && cd Satvenus 
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

10 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $SORY && sleep 1 && unzip Sorys.zip && sleep 2 && cd Sorys
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

11 ) rm -rf /etc/enigma2/lamedb && rm -rf /etc/enigma2/*.tv && rm -rf /etc/enigma2/*.radio
wget --no-check-certificate $VHAN && sleep 1 && unzip Vhannibal.zip && sleep 2 && cd Vhannibal
cp -p satellites.xml /$BODIR && rm -rf *.xml && rm -rf *.url && rm -rf *.txt && cp -p * /$BODIR
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 && sleep 2 && rm -R -f $MOTOR/* 2>/dev/null
clear && echo "" && echo "" && echo ""
echo "   ---------------------------------------------------- "
echo "                                                        "
echo "               ...BOUQUETS UPDATED...                   "
echo "      You should reboot your box to reload sat.xml      "
echo "                                                        "
echo "   ---------------------------------------------------- "
echo "" && sleep 5 && exit 1 ;;

12 ) clear; exit 1 ;;

esac 
done 

