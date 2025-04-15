#!/bin/bash

echo "🛠️ Instalando Node.js LTS..."
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs build-essential

echo "🚀 Instalando Node-RED globalmente..."
sudo npm install -g --unsafe-perm node-red

echo "📦 Creando carpeta de usuario para Node-RED en ~/.node-red..."
mkdir -p ~/.node-red
cd ~/.node-red

echo "📦 Instalando node-red-contrib-openai..."
npm install node-red-contrib-openai

echo "✅ Todo listo. Puedes iniciar Node-RED con:"
echo "node-red"
