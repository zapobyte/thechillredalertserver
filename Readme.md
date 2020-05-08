# The Chill RA
![](https://cncnet.org/images/games/red-alert/logo.png)

Red Alert Classic dedicated server hosted on RaspberryPi. 

![Discord Server](https://discord.com/assets/fc0b01fe10a0b8c602fb0106d8189d9b.png) 

If you want to join a chill community, playing all sorts of game join [here](https://discord.gg/grZjzM3)

To join the game use the OpenRA luncher and select The Chill RA server from the multiplayer menu.

### Requirements

 - [Nodejs/npm](https://nodejs.org/en/) - Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine. (this is not necessary but helful to run the server. also this is how it is deployed on the server.)
 - [PM2](https://pm2.keymetrics.io/) - PM2 is a daemon process manager that will help you manage and keep your application online 24/7
 - [OPENRA](https://github.com/OpenRA/OpenRA) - opensource Red Alert engine
 - Raspberypi >= 3b+ 

### Installation ![](https://www.openra.net/images/icons/ra_64x64.png)  


Install dependencies if missing

```
sudo apt-get install mono-runtime libmono2.0-cil libsdl2-2.0 \ 
	libmono-system-core4.0-cil libmono-system-drawing4.0-cil libmono-system-data4.0-cil \ 
	libmono-system-numerics4.0-cil libmono-system-runtime-serialization4.0-cil \
	libmono-system-xml-linq4.0-cil libgl1-mesa-dri liblua5.1-0
```

After the game has been installed just run `launch-dedicated.sh` script. More details inside the script if you want to have it configured.

`pm2 start ./launch-dedicated.sh`
