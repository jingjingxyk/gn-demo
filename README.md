
# gn build demo 
## prepare enviroment
```shell

sudo apt install ninja-build
git clone https://gn.googlesource.com/gn

```


## gn gn standalone start
[gn standalone start ](https://gn.googlesource.com.0.dengxiaci.com/gn/+/master/docs/standalone.md)
[gn ](http://blog.simplypatrick.com/posts/2016/01-23-gn/)

[gn standalone.md](https://gn.googlesource.com.0.dengxiaci.com/gn/+/master/docs/standalone.md)
[gn chromium demo 1](https://source-code.2.dengxiaci.com/chromium/.gn)
[gn chromium demo 2](https://source-code.2.dengxiaci.com/chromium/build/dotfile_settings.gni)
[gn chromium demo 3](https://source-code.2.dengxiaci.com/chromium/build/config/BUILDCONFIG.gn)

[GN 快速入门指南](https://blog.csdn.net/Vincent95/article/details/78499883)


## depot_tools 的作用就是：
 1. 下载，更新，同步代码
 2. 构建编译环境，利用 gn 生成 ninja 文件
 3. gn 生成的 ninjia 文件并通过工具 ninjia 进行最终编译成想要的目标

开发工具
工具链
运行时
平台相关库
工具库
文档

## 分布式构建
1. tmpfs 解决IO瓶颈,充分利用本机内存资源
1. make -j 充分利用本机计算资源
1. distcc 利用多台计算机资源
1. ccache 减少重复编译相同代码时间

## build example
```shell


gn gen out/Default
ninja -C out/Default
# ninja -C out/Default src:main

if [ ! -d 'release' ];then
  mkdir 'release';
if 
cd release 
cmake ..
```
