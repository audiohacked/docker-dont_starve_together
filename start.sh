# Copyright 2015 Sean Nelson <audiohacked@gmail.com>
#! /bin/bash
./update.sh
./servertoken.sh
./settings.sh
cd ./bin
./dontstarve_dedicated_server_nullrenderer -console \
    -persistent_storage_root /dontstarve \
    -conf_dir config
