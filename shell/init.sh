SCRIPT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# 关闭防火墙
# systemctl stop firewalld
# systemctl disable firewalld
# 禁用selinux
sed -ri 's/SELINUX=enforcing/SELINUX=diabled/' /etc/selinux/config
# 关闭swap
sed -ri 's/.*swap.*/#&/' /etc/fstab
# 修改静态ip
# sed -ri 's/BOOTPROTO="dhcp"/BOOTPROTO="none"/' /etc/sysconfig/network-scripts/ifcfg-ens33
# 设置时间同步
systemctl start chronyd
systemctl enable chronyd
# 配置ip地址
index=0
args=""
cat > /etc/hosts << EOF 
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4 
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
127.0.0.1   localhost localhost
127.0.0.1   node2 node2
`for i in $*
do
    args="$args$i "
    let index++
    if [ $(($index%2)) -eq 0 ]
    then 
        echo "$args"
        args=""
    fi
done`
EOF
# 配置过滤机制
cat > /etc/sysctl.conf << EOF 
vm.swappiness=0
net.core.somaxconn=1024
net.ipv4.tcp_max_tw_buckets=5000
net.ipv4.tcp_max_syn_backlog=1024
net.ipv4.ip_forward = 1 
net.bridge.bridge-nf-call-ip6tables = 1 
net.bridge.bridge-nf-call-iptables = 1 
EOF
modprobe br_netfilter
sysctl -p
# 配置阿里云镜像docker-ce
wget -O /etc/yum.repos.d/docker-ce.repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
# 下载docker
yum -y install docker-ce
# 启动docker
systemctl start docker
systemctl enable docker
# 配置加速器
cat > /etc/docker/daemon.json << EOF
{ 
    "registry-mirrors": ["https://t2uzotqr.mirror.aliyuncs.com"] 
} 
EOF
systemctl restart docker
# 手动拉取docker-compose
# curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x $SCRIPT_PATH/docker-compose-Linux-x86_64
cp $SCRIPT_PATH/docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
# 设置rancher账号
useradd rancher
usermod -aG docker rancher
echo Super2021 | passwd --stdin rancher
