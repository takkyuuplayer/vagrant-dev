setup: vagrant-setup

vagrant-setup:
	vagrant plugin install sahara
	vagrant plugin install vagrant-disksize
	vagrant plugin install vagrant-vbguest
