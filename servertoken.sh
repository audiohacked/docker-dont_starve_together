#!/bin/bash
if [[ ! -z "${SERVER_TOKEN}" ]]; then
	echo -ne "${SERVER_TOKEN}" | grep -P -n '\0$' > /dev/null
	if [ $? -ne 0 ]; then
		echo "Appending token with Null Char"
		SERVER_TOKEN="${SERVER_TOKEN}\0"
	fi
	echo -ne "${SERVER_TOKEN}" > /dontstarve/config/server_token.txt
fi

