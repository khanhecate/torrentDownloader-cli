#!/bin/bash
packet=$(command -v transmission-cli)
if ! whoami | grep -q "root" ;then
	echo "please run installer as root" && exit
fi
if [[ -z $packet ]]; then
	apt install transmission-cli -y
fi
if ! ls /var/log/ | grep -q "torrent-cli.log"; then
	touch /var/log/torrent-cli.log
	chmod 777 /var/log/torrent-cli.log
fi
echo "installer done
how to run this tool 
type \"torrentDownloader your-file.torrent\"   to start download
tanks :)"