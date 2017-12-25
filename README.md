# Dont-Starve-Dedicated-WCL-Server

> Forked from [Thoxvi/Dont-Starve-Together-Docker-Cluster](https://github.com/Thoxvi/Dont-Starve-Together-Docker-Cluster)

## 运行状况
* 镜像大约`580m`，包括底层Ubuntu镜像的话大约`1G`
* 大概每个实例(带洞穴的)占内存`1G`左右，CPU似乎不怎么占用
* 存档在生成的`data/名字/Master/save`里面，要备份的话，请用`chown`到自己的用户名，再进行备份
* Mod的话请查看`./template/dedicated_server_mods_setup.lua`文件，有具体说明，建议PC机先建立一个世界，再把Mod配置好，最后再复制到对应位置(`dedicated_server_mods_setup.lua`文件需要自行整理)

## Mods

### Server

* [Simple Health Bar](http://steamcommunity.com/sharedfiles/filedetails/?id=1207269058)
* [More Weapons and Magic](http://steamcommunity.com/sharedfiles/filedetails/?id=1234341720)
* [Wormhole Marks](http://steamcommunity.com/sharedfiles/filedetails/?id=362175979)
* [Increased Stack size](http://steamcommunity.com/sharedfiles/filedetails/?id=374550642)
* [Extra Equip Slots](http://steamcommunity.com/sharedfiles/filedetails/?id=375850593)
* [Global Positions](http://steamcommunity.com/sharedfiles/filedetails/?id=378160973)
* [Remove Penalty](http://steamcommunity.com/sharedfiles/filedetails/?id=378965501)
* [Tweak Those Tools, Tweaked!](http://steamcommunity.com/sharedfiles/filedetails/?id=441356490)
* [Food Values - Item Tooltips (Server and Client)](http://steamcommunity.com/sharedfiles/filedetails/?id=458940297)
* [Restart](http://steamcommunity.com/sharedfiles/filedetails/?id=462434129)
* [Fix Multiplayer](http://steamcommunity.com/sharedfiles/filedetails/?id=463718554)
* [Quick Pick](http://steamcommunity.com/sharedfiles/filedetails/?id=501385076)
* [Less lags](http://steamcommunity.com/sharedfiles/filedetails/?id=597417408)
* [[DST] Storeroom](http://steamcommunity.com/sharedfiles/filedetails/?id=623749604)
* [Trap Reset](http://steamcommunity.com/sharedfiles/filedetails/?id=679636739)

### Client (recommended)

* [Minimap HUD](http://steamcommunity.com/sharedfiles/filedetails/?id=345692228)
* [Geometric Placement](http://steamcommunity.com/sharedfiles/filedetails/?id=351325790)
* [Smarter Crock Pot](http://steamcommunity.com/sharedfiles/filedetails/?id=365119238)
* [Combined Status](http://steamcommunity.com/sharedfiles/filedetails/?id=376333686)
* [Auto Actions - Full client mod](http://steamcommunity.com/sharedfiles/filedetails/?id=651419070)

## 生成Cluster
修改`infos`信息为自己服务器的信息

```shell
$ python3 makedata.py  //生成cluster配置文件
$ cd ./data
$ docker-compose up //启动服务器
```

## 问题
- [ ] DST服务器自动安装更新mod
