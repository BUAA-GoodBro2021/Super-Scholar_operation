### 架构图

![structure](image/structure.png)

### Makefile

运行时先运行make init初始化脚本。

make node01包含初始化虚拟机和配置rke以及k8s部署。

make node0x包含初始化虚拟机。

### rke

rke配置在cluster_detail.txt文件下。

### 运行说明

将项目放置在任意目录下，运行对应make指令即可搭建集群。
