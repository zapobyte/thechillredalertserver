# The Chill RA
![](https://cncnet.org/images/games/red-alert/logo.png)

Red Alert Classic dedicated server hosted on RaspberryPi. 

To join the game use the OpenRA luncher and select The Chill RA server from the multiplayer menu.

## Perks

This scripts can also updated the server message shown in game, the `motd.txt` filei, with a ASCII draw and number of games played on the server. 

## How to use it.

Before runing the actual server run `editmotd.sh` file to update the motd.txt file.

- get a drawing in ASCII format and any additional text you want to have desplay and add it to `draw.txt` file.
- configure `editmotd.sh` file to suite your needs. view `editmotd.sh` for more details. 
- run `./editmotd.sh` using a cron job so it will restart every X amount of time.

Note: Use pm2 log rotation for better performance.

### Requirements

 - [Nodejs/npm](https://nodejs.org/en/) - Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine. (this is not necessary but helful to run the server. also this is how it is deployed on the server.)
 - [PM2](https://pm2.keymetrics.io/) - PM2 is a daemon process manager that will help you manage and keep your application online 24/7
 - [OPENRA](https://github.com/OpenRA/OpenRA) - opensource Red Alert engine
 - Raspberypi >= 3b+ 

![](https://www.openra.net/images/icons/ra_64x64.png)  

# Server setup and installationi

Follow the guide from OpenRA on how to setup or join the the Discord server. More information on their website here [OpenRA](https://openra.net).

Install missing dependencies if needed:

```
sudo apt-get install mono-runtime libmono2.0-cil libsdl2-2.0 \ 
	libmono-system-core4.0-cil libmono-system-drawing4.0-cil libmono-system-data4.0-cil \ 
	libmono-system-numerics4.0-cil libmono-system-runtime-serialization4.0-cil \
	libmono-system-xml-linq4.0-cil libgl1-mesa-dri liblua5.1-0
```

After the game has been installed just run `launch-dedicated.sh` script. More details inside the script if you want to have it configured.

To lunch the server use pm2 such as:

`pm2 start ./launch-dedicated.sh`
