# The Chill Island OpenRA dedicated server
![](https://cncnet.org/images/games/red-alert/logo.png)

[OpenRA](https://openra.net) - Red Alert Classic dedicated server hosted on RaspberryPi 3b+. 

To join the game use the [OpenRA](https://openra.net) launcher and select The Chill Island server from the multiplayer menu.

## About

- `./launch-dedicated.sh` - used to start the server. Original script from OpenRA server.
- `./editmotd.sh` - script used to update the `motd.txt` file. this file must be eddited accordingly as per in-file instruction. More info on the `motd.txt` file [here](https://github.com/OpenRA/OpenRA/wiki/Dedicated)
- `draw.txt` - text file containg your message(can be ascii draw);
- `motd.txt` - the `motd.txt` file generated which will be copied to the server location

Install pm2 to manage the server instance and store the output logs on the server. Using a cronjob on `./editmotd.sh` will make a repeat task job to update the Message of the day `motd.txt` file with your own.

Use pm2 log rotation for better performance.

### Requirements
 - RaspberyPi >= 3b+
 - [Nodejs/npm](https://nodejs.org/en/) - Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine. (this is not necessary but helful to run the server. also this is how it is deployed on the server.)
 - [PM2](https://pm2.keymetrics.io/) - PM2 is a daemon process manager that will help you manage and keep your application online 24/7
 - [OPENRA](https://github.com/OpenRA/OpenRA) - opensource Red Alert engine
 - Raspberypi >= 3b+ 

![](https://www.openra.net/images/icons/ra_64x64.png)  

## Server setup and installation

Follow the guide from [OpenRA](https://github.com/OpenRA/OpenRA/wiki/OpenRA-on-RaspberryPi) on how to setup or jioin the the Discord server. More information on their wiki here [OpenRA](https://github.com/OpenRA/OpenRA/wiki).

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
