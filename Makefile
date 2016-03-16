setup: submodule-setup vagrant-setup

submodule-setup:
	git submodule init
	git submodule update
	cd ./submodules/ubuntu-provisioning/ && bundle install

vagrant-setup:
	vagrant plugin install vagrant-itamae
	vagrant plugin install sahara
