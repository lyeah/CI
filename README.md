# CI
Continuous integration
构建基于目前灵衍前后台项目进行打包测试的环境
Dockerfile基于[docker hub的node镜像,tag为node:6](https://hub.docker.com/r/library/node/tags/),前后台打包基于gulp构建

## install
假设已经安装好docker
1. (运行) 在项目目录下执行
```
  docker run -v `pwd`:/www -it pack bash
```
  
2. (打包) 执行 ```. ./pack```
