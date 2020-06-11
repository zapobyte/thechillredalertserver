#!/bin/sh

# OpenRA Server script to update motd.txt server message with a drawing in ASCII format and number of games played
# script made by zapo 
# http://victorz.me
# 
# http://openra.net - OpenRA

echo "Script Started"
# configuration variables
CurrentPath=$(pwd)
# pm2 logs path
Pm2LogsPath=/home/pi/.pm2/logs/
# motd.txt file path
MotdFilePath=/home/pi/.openra/motd.txt
# name identified of logs
LogFileName="TheChill"
# draw the drawing into the motd.txt
cat draw.txt > motd.txt
# get number of players
GamesPlayed=$(cd $Pm2LogsPath && find . | grep $LogFileName | xargs grep 'Game start' | wc -l)
# update motd.txt
cd $CurrentPath && echo $GamesPlayed >> motd.txt
# copy motd.txt to server locations motd.txt
cp ./motd.txt $MotdFilePath

echo "Script Done. Output:"
cat motd.txt
