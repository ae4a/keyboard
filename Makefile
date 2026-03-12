default: run


setup:
	multipass start qmk
	# multipass mount . qmk:/home/ubuntu/mounted

run:
	multipass exec qmk -- /home/ubuntu/.local/bin/qmk compile -c -kb crkbd/rev4_1/standard -e CONVERT_TO=promicro_rp2040 /home/ubuntu/mounted/corne.json
	multipass exec qmk -- bash -c 'mv ~/qmk_firmware/*.uf2 ~/mounted'

	# multipass umount qmk:/mnt/RPI-RP2
	# sudo chmod -R 777 /Volumes/RPI-RP2
	# multipass mount  --uid-map 1000:1000 --gid-map 1000:1000 /Volumes/RPI-RP2 qmk:/mnt/RPI-RP2

#	Working
	#multipass exec qmk -- /home/ubuntu/.local/bin/qmk compile -c -kb crkbd/rev4_1/standard -km default

	#multipass exec qmk -- /home/ubuntu/.local/bin/qmk compile -e CONVERT_TO=promicro_rp2040 -kb crkbd/rev1 corne.json
