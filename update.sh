# Copyright 2015 Sean Nelson <audiohacked@gmail.com>
#!/bin/bash

STEAM=/steamcmd/steamcmd.sh
AUTH="anonymous"
INSTALL=/dontstarve
APPID="343050"

# @ShutdownOnFailedCommand 1
# @NoPromptForPassword 1

$STEAM +login $AUTH \
    +force_install_dir $INSTALL \
    +app_update $APPID validate \
    +quit
