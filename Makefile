default: compile

first-setup:
	multipass launch --name qmk -d 10G
	# Install qmk and deps

setup:
	multipass start qmk
	multipass mount . qmk:/home/ubuntu/mounted

compile:
	./scripts/compile.sh

flash:
	./scripts/flash.sh	
