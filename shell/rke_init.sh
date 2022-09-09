# 初始化rke
SCRIPT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd /app/rancher
rke up
cd $SCRIPT_PATH
