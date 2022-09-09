# 获取kubectl
curl -LO https://dl.k8s.io/release/v1.21.9/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin/ 
mkdir ~/.kube 
mv /app/rancher/kube_config_cluster.yml ~/.kube/config
