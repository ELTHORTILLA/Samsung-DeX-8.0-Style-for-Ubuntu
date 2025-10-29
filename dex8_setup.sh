#!/bin/bash
# ──────────────────────────────────────────────
#  Ubuntu → Samsung DeX 8.0 Visual Setup Script
#  Autor: ThortiDev
# ──────────────────────────────────────────────

echo "🚀 Iniciando configuración estilo Samsung DeX 8.0…"

# ── 1. Requisitos básicos
sudo apt update -y
sudo apt install -y gnome-tweaks gnome-shell-extension-manager unzip wget git

# ── 2. Desactiva Ubuntu Dock (para usar Dash to Panel)
gnome-extensions disable ubuntu-dock@ubuntu.com 2>/dev/null || true

# ── 3. Instala tema Orchis
if [ ! -d "Orchis-theme" ]; then
  git clone https://github.com/vinceliuice/Orchis-theme.git
fi
cd Orchis-theme
sudo ./install.sh --shell
cd ..

# ── 4. Instala íconos WhiteSur
if [ ! -d "WhiteSur-icon-theme" ]; then
  git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
fi
cd WhiteSur-icon-theme
sudo ./install.sh
cd ..

# ── 5. Aplica temas
gsettings set org.gnome.desktop.interface gtk-theme "Orchis-Dark"
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur-dark"
gsettings set org.gnome.shell.extensions.user-theme name "Orchis-Dark"

# ── 6. Instala extensiones base (Dash to Panel, ArcMenu, Blur, Just Perfection)
echo "🧩 Instalando extensiones esenciales (Dash to Panel, ArcMenu, Blur My Shell, Just Perfection)…"
gnome-extensions install https://extensions.gnome.org/extension-data/dash-to-paneljderose9.github.com.v46.shell-extension.zip
gnome-extensions install https://extensions.gnome.org/extension-data/arcmenuarcmenu.com.v46.shell-extension.zip
gnome-extensions install https://extensions.gnome.org/extension-data/blur-my-shellaunetx.v46.shell-extension.zip
gnome-extensions install https://extensions.gnome.org/extension-data/just-perfection-desktopjust-perfection.v46.shell-extension.zip

# ── 7. Activa extensiones
for ext in dash-to-panel@jderose9.github.com arcmenu@arcmenu.com blur-my-shell@aunetx just-perfection-desktop@just-perfection; do
  gnome-extensions enable "$ext" 2>/dev/null || true
done

# ── 8. Configuración rápida Dash to Panel
gsettings set org.gnome.shell.extensions.dash-to-panel panel-size 48
gsettings set org.gnome.shell.extensions.dash-to-panel panel-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-length 100
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-bg true
gsettings set org.gnome.shell.extensions.dash-to-panel trans-panel-opacity 0.55

# ── 9. Fondo tipo DeX (opcional)
mkdir -p ~/Pictures
wget -q -O ~/Pictures/dex8-wallpaper.jpg https://raw.githubusercontent.com/vinceliuice/WhiteSur-kde/master/wallpapers/WhiteSur/wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri "file://$HOME/Pictures/dex8-wallpaper.jpg"

echo "✅ Configuración completa. Reinicia la Shell (Alt+F2 → r) o cierra sesión y entra de nuevo."
echo "Tu escritorio ahora tiene el estilo Samsung DeX 8.0."

