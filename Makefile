default: run


setup:
	multipass start qmk
	multipass mount . qmk:/home/ubuntu/mounted

run:
	multipass exec qmk -- qmk compile -e CONVERT_TO=promicro_rp2040 -kb crkbd/rev1 corne.json; mv ~/qmk_firmware/*.uf2 .
