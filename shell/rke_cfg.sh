# 使用rke部署k8s
SCRIPT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
mkdir -p /app/rancher
cd /app/rancher
rke config --name cluster.yml
cd $SCRIPT_PATH
