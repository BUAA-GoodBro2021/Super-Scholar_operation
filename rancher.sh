# 启动rancher管理工具
docker run -d --restart=unless-stopped --privileged --name rancher -p 80:80 -p 443:443 rancher/rancher:v2.5.9
