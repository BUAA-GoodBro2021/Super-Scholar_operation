.PHONY: block \
init \
node01 \
node02 \
node03

SHELL_PATH = ./shell

block:
	# 需要添加参数
init:
	# 初始化虚拟机
	chmod +x $(SHELL_PATH)/init.sh
	# 配置虚拟机ssh
	chmod +x $(SHELL_PATH)/ssh.sh
	# rke移动
	chmod +x $(SHELL_PATH)/rke_mv.sh
	# rke配置
	chmod +x $(SHELL_PATH)/rke_cfg.sh
	# rke初始化
	chmod +x $(SHELL_PATH)/rke_init.sh
	# 配置kubectl
	chmod +x $(SHELL_PATH)/kubectl.sh
	# 运行rancher
	chmod +x $(SHELL_PATH)/rancher.sh
node01: 
	$(SHELL_PATH)/init.sh
	$(SHELL_PATH)/ssh.sh
	$(SHELL_PATH)/rke_mv.sh
	$(SHELL_PATH)/rke_cfg.sh
	$(SHELL_PATH)/rke_init.sh
	$(SHELL_PATH)/kubectl.sh
	$(SHELL_PATH)/rancher.sh
node02:
	$(SHELL_PATH)/init.sh
node03:
	$(SHELL_PATH)/init.sh
