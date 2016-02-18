#!/bin/bash
__dirname=`pwd`
if [ -f /usr/share/applications/sublime-text.desktop ]; then
	sudo apt-get install libgtk2.0-dev libglade2-dev firefox-dev libchm-dev libssl-dev
	cd $__dirname

	sudo gcc -shared -o libsublime-imfix.so sublime_imfix.c  `pkg-config --libs --cflags gtk+-2.0` -fPIC

	sudo mv libsublime-imfix.so /opt/sublime_text/

	sudo cat bin_subl > /usr/bin/subl

	sudo sed -i 's#=/opt/sublime_text/sublime_text\([^\n]*\)#=bash -c "LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so exec /opt/sublime_text/sublime_text\1"#g' /usr/share/applications/sublime-text.desktop

	cd ~

	echo "success for sublime-text chinese supporting!"
else
	echo "no file /usr/share/applications/sublime-text.desktop"
fi
