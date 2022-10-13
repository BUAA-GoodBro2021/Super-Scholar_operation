.PHONY: block \
init \
node01 \
node02 \
node03

PATH_SHELL = ./shell

block:
	# 需要添加参数
init:
	# 初始化配置
	chmod +x $(PATH_SHELL)/config.sh
	# 初始化虚拟机
	chmod +x $(PATH_SHELL)/init.sh
	# 配置虚拟机ssh
	chmod +x $(PATH_SHELL)/ssh.sh
	# 配置rke
	chmod +x $(PATH_SHELL)/rke.sh
	# 配置kubectl
	chmod +x $(PATH_SHELL)/kubectl.sh
	# 运行rancher
	chmod +x $(PATH_SHELL)/rancher.sh
node01:
	make init
	cd $(PATH_SHELL) && make node01
node02:
	make init
	cd $(PATH_SHELL) && make node02
node03:
	make init
	cd $(PATH_SHELL) && make node03
