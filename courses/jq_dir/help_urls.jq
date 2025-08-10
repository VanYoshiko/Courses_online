#!/bin/sh

echo "Help Documentations:"
jq -r '.help_refs'[] ~com~apple~CloudDocs/sharedlocal/home/.local/share/json/lynx_urls.json
