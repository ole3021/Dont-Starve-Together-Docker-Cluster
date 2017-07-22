# Dont-Starve-Together-Docker-Cluster
根据配置文件快速建立饥荒联机版(DST)Docker集群ヾ(ﾟ∀ﾟゞ)
## 运行状况
* 镜像大约`580m`，包括底层Ubuntu镜像的话大约`1G`
* 大概每个实例(带洞穴的)占内存`1G`左右，CPU似乎不怎么占用
* 存档在生成的`data/名字/save`里面，要备份的话，请用`chown`到自己的用户名，再进行备份
* Mod的话请查看`./template/dedicated_server_mods_setup.lua`文件，有具体说明，建议PC机先建立一个世界，再把Mod配置好，最后在复制到对应位置(`dedicated_server_mods_setup.lua`文件需要自行整理)

## 运行环境配置
### Python3环境配置
1. 在[Python官网](https://www.python.org/downloads/)下载对应自己操作系统的安装包
2. ~~诶这个就不详细说了安装环境而已嘛(✽ ﾟдﾟ ✽)~~

### Docker环境配置
1. 请根据自己的操作系统，在[Docker官方网站](https://docs.docker.com/engine/installation/#server)选择适合的**DockerCE**~~(跟着步骤复制粘贴)~~
2. 如果是Linux~~(请跟着我宣扬一遍:Linux大法好！)~~，最好把自己的管理员用户添加到Docker用户组里，以免每次打命令都得加入sudo，命令：`sudo usermod -aG docker $USER`
3. 安装`docker-compose`:如果你是Ubuntu，可以直接使用命令:`sudo apt install docker-compose`，如果不是，请前往[Docker官方网站](https://docs.docker.com/compose/install/)~~(跟着步骤复制粘贴)~~
4. 至此，你应该有了一个正常的Docker环境，如果有问题可以根据END区的联系方式提交（〃・ω・〃）

## 基本使用说明
1. Clone项目:`git clone https://github.com/Thoxvi/Dont-Starve-Together-Docker-Cluster.git`
2. 进入目录:`cd ./Dont-Starve-Together-Docker-Cluster`
3. 根据模板修改infos文件，提供一个测试Token(每一行对应一个实例,#号注释，如果不需要密码的话请留空对应位置)
4. 执行生成脚本:`python3 makedata.py`
5. 转到工作目录:`cd data`
6. 启动容器:`docker-compose up`
7. 若不想查看Log的话，可以在`启动容器`步骤使用:`docker-compose up -d`

## END
* 如果有任何建议或者Bug可以提issue，或者可以邮箱联系`A@Thoxvi.com`
* (｡･ω･｡)ﾉ♡