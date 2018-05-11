# CI
Continuous integration

构建基于目前灵衍前后台项目进行打包测试的环境

Dockerfile基于[docker hub的node镜像,tag为node:6](https://hub.docker.com/r/library/node/tags/),前后台打包基于gulp构建

## 实施

### install
安装可以直接参考[docker--从入门到实战](https://yeasy.gitbooks.io/docker_practice/content/install/)中对应操作系统的安装步骤

以下设计到的软件都可以在[MEGA网盘](https://mega.nz/#F!SCJGmDRA!qkxLxEI0n3toAZNs1sS1uw)中下载安装，针对不能翻墙

注意低于以下系统版本需要安装[Docker Toolbox，需要翻墙全局代理访问](https://docs.docker.com/toolbox/overview/)
    
    windows 10 professional
    
    Mac OS Yosemite 10.10.3
 
- windows
    
    window 10安装[Docker CE for Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows?tab=description)

- mac-osx
    
    MAC-OSX安装[docker-ce-desktop-mac](https://store.docker.com/editions/community/docker-ce-desktop-mac)
    
### 拉取制作好的image
```
docker pull dockerdock/package:v1
```

### 运行-打包

1. (运行) 在项目目录下执行
```
  docker run -v `pwd`:/www -it pack bash
```
  
2. (打包) 执行 

    选项-f: 只前台打包  

    选项-b: 只后台打包  

    选项-fb:前后台同时打包
```
    . ./pack [-f][-b]
```
