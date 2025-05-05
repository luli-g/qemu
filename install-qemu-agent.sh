#!/bin/bash

set -e

echo "🔧 QEMU Guest Agent wird installiert..."

# Paketliste aktualisieren
sudo apt update

# QEMU Guest Agent installieren
sudo apt install -y qemu-guest-agent

# Dienst aktivieren und starten
sudo systemctl enable qemu-guest-agent
sudo systemctl start qemu-guest-agent

# Status anzeigen
echo "✅ Status von qemu-guest-agent:"
systemctl status qemu-guest-agent --no-pager

echo "✅ QEMU Guest Agent ist installiert und aktiviert!"
