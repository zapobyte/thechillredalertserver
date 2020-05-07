#!/bin/sh
# example launch script, see https://github.com/OpenRA/OpenRA/wiki/Dedicated for details

# Server settings:

# Name="${Name:-"Dedicated Server"}"
# Mod="${Mod:-"ra"}"
# ListenPort="${ListenPort:-"1234"}"
# AdvertiseOnline="${AdvertiseOnline:-"True"}"
# Password="${Password:-""}"

# RequireAuthentication="${RequireAuthentication:-"False"}"
# ProfileIDBlacklist="${ProfileIDBlacklist:-""}"
# ProfileIDWhitelist="${ProfileIDWhitelist:-""}"
# Ban="${Ban:-""}"
# EnableSingleplayer="${EnableSingleplayer:-"False"}"
# EnableSyncReports="${EnableSyncReports:-"False"}"
# EnableGeoIP="${EnableGeoIP:-"True"}"
# ShareAnonymizedIPs="${ShareAnonymizedIPs:-"True"}"

# Other settings:

# BotDebug="${BotDebug:-"True"}"


Name="${Name:-"The Chill Server"}"
Mod="${Mod:-"ra"}"
ListenPort="${ListenPort:-"1234"}"
ExternalPort="${ExternalPort:-"1234"}"
AdvertiseOnline="${AdvertiseOnline:-"True"}"
EnableSingleplayer="${EnableSingleplayer:-"True"}"
Password="${Password:-""}"
EnableGeoIp="${EnableGeoIp:-"True"}"
EnableSyncReports="${EnableSyncReports:-"True"}"
ProfileIDBlacklist="${ProfileIDBlacklist:-""}"

while true; do
     mono --debug OpenRA.Server.exe Game.Mod=$Mod \
     Server.Name="$Name" Server.ListenPort=$ListenPort Server.ExternalPort=$ExternalPort \
     Server.AdvertiseOnline=$AdvertiseOnline \
     Server.EnableSingleplayer=$EnableSingleplayer Server.Password=$Password \
     Server.EnableGeoIp=$EnableGeoIp \
     Server.EnableSyncReports=$EnableSyncReports \
     Server.ProfileIDBlacklist=$ProfileIDBlacklist \
     Server.Ban=$Ban
done
