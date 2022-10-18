.PHONY: master \
node

CONFIG := $(shell ./config.sh)
master:
	./init.sh $(CONFIG)
	./rancher.sh
node:
	./init.sh $(CONFIG)
