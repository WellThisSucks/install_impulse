#!/data/data/com.termux/files/usr/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
ST='\033[0m '

#Установка
apt update
apt install python
apt install python2
apt install python3
apt install python3-pip
apt install git
cd
git clone https://github.com/LimerBoy/impulse
cd impulse
pip3 install -r requirements.txt
echo -e "$REDХочешь использовать impulse одной командой:да/нет"
read impulse
if [ "$impulse" = "да" ]; then
git clone https://github.com/WellThisSucks/impulsev2
cd impulsev2
mv impulse ../../usr/bin
cd
cd ../usr/bin
chmod 755 impulse
cd
rm -rf impulsev2
echo -e "$GREENИспользование : просто в любой директории водишь команду (impulse), а там дальше всё интуинтивно понятно$ST "
fi

if [ "$impulse" = "нет" ]; then
echo -e "$REDРаз выбрал НЕТ значит ты наверное знаешь как пользоваться этой утилитой))$ST"
fi

