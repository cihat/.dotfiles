#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Github Repo
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }

repo=$1

url="https://github.com/$repo"

open -a "Google Chrome" "$url"
