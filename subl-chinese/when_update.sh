#!/bin/bash
sudo cat bin_subl > /usr/bin/subl
sed -i 's#=/opt/sublime_text/sublime_text\([^\n]*\)#=bash -c "LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so exec /opt/sublime_text/sublime_text\1"#g' test.txt
sudo sed -i 's#=/opt/sublime_text/sublime_text\([^\n]*\)#=bash -c "LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so exec /opt/sublime_text/sublime_text\1"#g' /usr/share/applications/sublime-text.desktop