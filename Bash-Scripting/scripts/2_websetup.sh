#!/bin/bash

set -euo pipefail

# Variables
ARTIFACT_URL="https://www.tooplate.com/zip-templates/2098_health.zip"
TMP_DIR="/tmp/webfiles"
WEB_ROOT="/var/www/html"
ZIP_FILE="$TMP_DIR/2098_health.zip"

# Functions
log() {
    echo -e "\n########################################"
    echo "$1"
    echo "########################################"
}

# Installing Dependencies
log "Installing packages."
sudo yum install -y wget unzip httpd > /dev/null

# Start & Enable Service
log "Start & Enable HTTPD Service"
sudo systemctl enable --now httpd

# Creating Temp Directory
log "Starting Artifact Deployment"
rm -rf "$TMP_DIR"
mkdir -p "$TMP_DIR"
cd "$TMP_DIR"

# Download and Extract Artifact
wget -q "$ARTIFACT_URL" -O "$ZIP_FILE"
unzip -q "$ZIP_FILE"
sudo cp -r 2098_health/* "$WEB_ROOT/"

# Bounce Service
log "Restarting HTTPD service"
sudo systemctl restart httpd

# Clean Up
log "Removing Temporary Files"
rm -rf "$TMP_DIR"

# Status & Verification
sudo systemctl status httpd --no-pager
ls -l "$WEB_ROOT"
