all:
	ansible-galaxy install -r requirements.yml
vagrant:
	ansible-playbook -i vag.ini -bK site.yml
