# 拉取rancher镜像
docker pull rancher/rancher:v2.5.2-linux-arm64
# 创建rancher数据存储路径
mkdir /app
mkdir /app/rancher
# 启动rancher管理工具
docker run -d --restart=always --privileged --name rancher -p 80:80 -p 443:443 -v /app/rancher:/var/lib/rancher/ rancher/rancher:v2.5.2-linux-arm64
