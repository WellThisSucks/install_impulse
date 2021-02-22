#!/data/data/com.termux/files/usr/bin/bash

#Цвета
RED='\033[0;31m'
GREEN='\033[0;32m'
ST='\033[0m '

#Установка
apt update
apt upgrade -y
apt install python -y
apt install python2 -y
apt install git -y
git clone https://github.com/LimerBoy/impulse
cd impulse
pip install -r requirements.txt
cd
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
echo -e "$GREENИспользование : просто в любой из директорий вводишь команду (impulse)$ST"
fi

if [ "$impulse" = "нет" ]; then
echo -e "$REDРаз ты выбрал (нет) то ты наверное умеешь пользоваться данной утилитой ;) $ST"
fi
