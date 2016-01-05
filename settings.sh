# Copyright 2015 Sean Nelson <audiohacked@gmail.com>
#!/bin/bash

FPATH=/dontstarve/config

if [ -e "$FPATH/settings.ini" ]; then
    echo "Settings file found. Replacing."
    mv ${FPATH}/settings.ini ${FPATH}/settings_`date +%Y%m%d_%H%M%S`.ini
    # echo "[MISC]"                                            > ${FPATH}/settings.ini
    # echo "CONSOLE_ENABLED = true"                           >> ${FPATH}/settings.ini
    # echo "autocompiler_enabled = true"                      >> ${FPATH}/settings.ini
    # echo ""                                                 >> ${FPATH}/settings.ini
    # echo ""                                                 >> ${FPATH}/settings.ini
    echo "[NETWORK]"                                          >> ${FPATH}/settings.ini
    echo "default_server_name = ${SERVER_NAME}"               >> ${FPATH}/settings.ini
    echo "default_server_description = ${SERVER_DESCRIPTION}" >> ${FPATH}/settings.ini
    echo "server_port = ${SERVER_PORT}"                       >> ${FPATH}/settings.ini
    echo "max_players = ${SERVER_PLAYERS}"                    >> ${FPATH}/settings.ini
    echo "pvp = false"                                        >> ${FPATH}/settings.ini
    echo "game_mode = ${SERVER_GAME_MODE}"                    >> ${FPATH}/settings.ini
    echo "server_intention = cooperative"                     >> ${FPATH}/settings.ini
else
    echo "Settings file not found. Creating."
    # echo "[MISC]"                                            > ${FPATH}/settings.ini
    # echo "CONSOLE_ENABLED = true"                           >> ${FPATH}/settings.ini
    # echo "autocompiler_enabled = true"                      >> ${FPATH}/settings.ini
    # echo ""                                                 >> ${FPATH}/settings.ini
    # echo ""                                                 >> ${FPATH}/settings.ini
    echo "[NETWORK]"                                          >> ${FPATH}/settings.ini
    echo "default_server_name = ${SERVER_NAME}"               >> ${FPATH}/settings.ini
    echo "default_server_description = ${SERVER_DESCRIPTION}" >> ${FPATH}/settings.ini
    echo "server_port = ${SERVER_PORT}"                       >> ${FPATH}/settings.ini
    echo "max_players = ${SERVER_PLAYERS}"                    >> ${FPATH}/settings.ini
    echo "pvp = false"                                        >> ${FPATH}/settings.ini
    echo "game_mode = ${SERVER_GAME_MODE}"                    >> ${FPATH}/settings.ini
    echo "server_intention = cooperative"                     >> ${FPATH}/settings.ini
fi
