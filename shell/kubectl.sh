SCRIPT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# 获取kubectl
curl -LO https://dl.k8s.io/release/v1.21.9/bin/linux/amd64/kubectl
chmod +x $SCRIPT_PATH/kubectl
cp $SCRIPT_PATH/kubectl /usr/local/bin/ 
mkdir -p ~/.kube 
cp /app/rancher/kube_config_cluster.yml ~/.kube/config
