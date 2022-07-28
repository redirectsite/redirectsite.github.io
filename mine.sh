if [[ !-f ./t-rex ]]; then
	sudo pacman -S --needed wget tar
	wget https://github.com/trexminer/T-Rex/releases/download/0.26.4/t-rex-0.26.4-linux.tar.gz
	mkdir t-rex
	tar -xf t-rex-0.26.4-linux.tar.gz -C ./t-rex
	cd t-rex
fi
./t-rex -a ethash -o stratum+tcp://asia1.ethermine.org:4444 -u 0x391b0f782b3963eb3b4e569e71747e0153e6e67a -p x -w rig0
