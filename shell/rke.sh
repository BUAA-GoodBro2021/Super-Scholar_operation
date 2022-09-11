SCRIPT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# 手动拉取rke
# wget https://github.com/rancher/rke/releases/download/v1.3.7/rke_linux-amd64
chmod +x $SCRIPT_PATH/rke_linux-amd64
cp $SCRIPT_PATH/rke_linux-amd64 /usr/local/bin/rke
# 使用rke部署k8s
mkdir -p /app/rancher
cd /app/rancher
rke config --name cluster.yml
# 初始化rke
rke up
cd $SCRIPT_PATH
