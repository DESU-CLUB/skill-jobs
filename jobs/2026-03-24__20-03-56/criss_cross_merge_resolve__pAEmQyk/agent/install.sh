#!/bin/bash
set -euo pipefail

apt-get update
apt-get install -y curl ripgrep

# Install Pochi

echo "downloading pochi version: v0.6.2"
curl -fsSL https://getpochi.com/install.sh | bash -s "pochi-v0.6.2"


ln -s ~/.pochi/bin/pochi /usr/local/bin/pochi
mkdir -p /logs/agent/pochi

# Install skills
apt-get install -y nodejs npm
npx skills add https://github.com/onevcat/skills --skill onevcat-jj -y

pochi --version