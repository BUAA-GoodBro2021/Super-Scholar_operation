.PHONY: node01 \
node02 \
node03 \

CONFIG := $(shell ./config.sh)
node01:
	./init.sh $(CONFIG)
	./ssh.sh $(CONFIG)
	./rke.sh
	./kubectl.sh
	./rancher.sh
node02:
	./init.sh $(CONFIG)
node03:
	./init.sh $(CONFIG)
