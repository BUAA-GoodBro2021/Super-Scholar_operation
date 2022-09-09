.PHONY: block \
init \
node01 \
node02 \
node03

block:
	# 需要添加参数
init:
	# 初始化虚拟机
	chmod +x init.sh
	# 配置虚拟机ssh
	chmod +x ssh.sh
	# rke移动
	chmod +x rke_mv.sh
	# rke配置
	chmod +x rke_cfg.sh
	# rke初始化
	chmod +x rke_init.sh
	# 配置kubectl
	chmod +x kubectl.sh
	# 运行rancher
	chmod +x rancher.sh
node01: 
	./init.sh
	./ssh.sh
	./rke_mv.sh
	./rke_cfg.sh
	./rke_init.sh
	./kubectl.sh
	./rancher.sh
node02:
	./init.sh
node03:
	./init.sh
