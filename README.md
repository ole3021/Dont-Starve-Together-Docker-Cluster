# Dont-Starve-Dedicated-WCL-Server

> Forked from [Thoxvi/Dont-Starve-Together-Docker-Cluster](https://github.com/Thoxvi/Dont-Starve-Together-Docker-Cluster)

## 运行状况
* 镜像大约`580m`，包括底层Ubuntu镜像的话大约`1G`
* 大概每个实例(带洞穴的)占内存`1G`左右，CPU似乎不怎么占用
* 存档在生成的`data/名字/Master/save`里面，要备份的话，请用`chown`到自己的用户名，再进行备份
* Mod的话请查看`./template/dedicated_server_mods_setup.lua`文件，有具体说明，建议PC机先建立一个世界，再把Mod配置好，最后再复制到对应位置(`dedicated_server_mods_setup.lua`文件需要自行整理)

## Modes for server
* [Storeroom]()
* [Extra Equip Slots]()
* [Food Values-Item Tooltips(Server and Client)]()
* [Global Positions]()
* [Increased Stack size]()
* [Limit Prefab]()
* [Map Discovery Sharing]()
* [More Weapons and Magic]()
* [Quick Pick]()
* [Restart]()
* [Simple Health Bar DST]()

## 生成Cluster
```shell
$ python3 makedata.py  //生成cluster配置文件
$ cd ./data
$ docker-compose up //启动服务器
```

## 问题
- [ ] Mod 加载不成功，再创建的服务器中并没有mod配置
