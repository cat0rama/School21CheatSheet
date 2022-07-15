#!/bin/bash

PATHS=(
	'~/Library/Caches/*'
	'~/Library/42_cache/'
	'~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/'
	'~/Library/Application\ Support/Slack/Cache/'
	'~/Library/Application\ Support/Slack/Code\ Cache/'
	'~/Library/Application\ Support/Code/User/workspaceStorage'
	'~/Library/Application\ Support/Code/Cache/Cache_Data'
	'~Library/Application\ Support/Code/CachedExtensionVSIXs'
)

for del in "${PATHS[@]}"; do
	eval del=$del
	if ! [[ -f "$del" ]] && ! [[ -d "$del" ]]; then
		continue
	fi
	echo "Deleting $(du -hd 0 "$del")"
	rm -rf "$del"
done