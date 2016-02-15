#!/bin/bash

sed -i 's#=/opt/sublime_text/sublime_text\([^\n]*\)#=bash -c "LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so exec /opt/sublime_text/sublime_text\1"#g' test.txt
