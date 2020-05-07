hill RA
 ![](https://cncnet.org/images/games/red-alert/logo.png)

Red Alert Classic dedicated server hosted on RaspberryPi. 


### Requirements
 - [Nodejs/npm](https://nodejs.org/en/) - Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine. (this is not necessary but helful to run the server. also this is how it is deployed on the server.)
 - [PM2](https://pm2.keymetrics.io/) - PM2 is a daemon process manager that will help you manage and keep your application online 24/7
 - [OPENRA](https://github.com/OpenRA/OpenRA) - opensource Red Alert engine
 - Raspberypi >= 3b+ 
### Installation

 ![](https://www.openra.net/images/icons/ra_64x64.png)  **Running on Raspbian**
[Link](https://github.com/OpenRA/OpenRA/wiki/OpenRA-on-RaspberryPi)
If the game is not installed do the following:
```
sudo apt-get install mono-runtime libmono2.0-cil libsdl2-2.0 \ 
	libmono-system-core4.0-cil libmono-system-drawing4.0-cil libmono-system-data4.0-cil \ 
	libmono-system-numerics4.0-cil libmono-system-runtime-serialization4.0-cil \
	libmono-system-xml-linq4.0-cil libgl1-mesa-dri liblua5.1-0
```
`wget https://github.com/OpenRA/OpenRA/releases/download/release-20180307/openra_release.20180307_all.deb`

`sudo dpkg -i openra_release.20180307_all.deb`

After the game has been installed just run `my-dedicated.sh` script. More details inside the script if you want to have it configured.

`pm2 start ./my-dedicated.sh`
