#!/bin/sh

# OpenRA Server script used to update Message of the day `motd.txt` server message with custom message and number of games played on the server
# script made by zapo 
# http://victorz.me
# 
# http://openra.net - OpenRA website

echo "Script Started"
# configuration variables
CurrentPath=$(pwd)
# pm2 logs path
Pm2LogsPath=/home/pi/.pm2/logs/
# motd.txt file path
MotdFilePath=/home/pi/.openra/motd.txt
# name identified of logs
LogFileName="TheChill"
# add the body content into the motd.txt
cat draw.txt > motd.txt
# get number of players
GamesPlayed=$(cd $Pm2LogsPath && find . | grep $LogFileName | xargs grep 'Game start' | wc -l)
# update motd.txt file with number of games played
cd $CurrentPath && echo $GamesPlayed >> motd.txt
# last file entry message 
LastUpdateText="/Server restarts daily between 23:57-23:59 GMT. Last update on: $(date)/"
echo $LastUpdateText >> motd.txt
# copy motd.txt to server locations motd.txt
cp ./motd.txt $MotdFilePath
echo "Script Done. Output:"
cat motd.txt

