#!/bin/bash
set -e
cd "$(dirname "$0")"
wrangler pages deploy . --project-name titleperfect
echo "Deployed to https://titleperfect.app"
