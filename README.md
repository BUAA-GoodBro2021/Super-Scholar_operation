### 架构图

![structure](image/structure.png)

### Makefile

使用一级目录下的make node0x指令即可。

### rke

rke配置在cluster_detail.txt文件下。

### docker

docker下面存放着Dockerfile以及k8s容器生成代码。

### 运行说明

将项目放置在任意目录下，运行对应make指令即可搭建集群。

make node01：包含rke的初始化k8s节点。

make node0x：初始化k8s的节点。
