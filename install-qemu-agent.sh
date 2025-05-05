#!/bin/bash

set -e

echo "📦 System wird aktualisiert..."
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

echo "🔧 QEMU Guest Agent wird installiert..."

# QEMU Guest Agent installieren
sudo apt install -y qemu-guest-agent

# Dienst aktivieren und starten
sudo systemctl enable qemu-guest-agent
sudo systemctl start qemu-guest-agent

echo "✅ QEMU Guest Agent ist installiert und aktiv."

# Neustart
echo "🔁 Neustart in wenigen Sekunden..."
sleep 3
sudo reboot now
