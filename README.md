# 🖥️ Samsung DeX 8.0 Style for Ubuntu

Convierte tu escritorio **Ubuntu GNOME** en una interfaz moderna similar a **Samsung DeX 8.0**, con una barra inferior translúcida, menú tipo launcher, temas oscuros y animaciones suaves.

---

## ✨ Características principales

- 🪟 **Tema GTK:** [Orchis-Dark](https://github.com/vinceliuice/Orchis-theme)
- 🎨 **Iconos:** [WhiteSur-Dark](https://github.com/vinceliuice/WhiteSur-icon-theme)
- 🧩 **Extensiones GNOME:**
  - Dash to Panel → Panel inferior tipo DeX  
  - Arc Menu → Menú launcher personalizado  
  - Blur My Shell → Efecto vidrio translúcido  
  - Just Perfection → Interfaz limpia sin top bar

---

## ⚙️ Requisitos

- Ubuntu 22.04 o 24.04 LTS (GNOME Shell ≥ 46)
- Permisos sudo
- Conexión a Internet

---

## 🚀 Instalación rápida

Copia y ejecuta **un solo bloque** en la terminal:

```bash
wget -O ~/dex8_setup.sh https://raw.githubusercontent.com/ELTHORTILLA/Samsung-DeX-8.0-Style-for-Ubuntu/main/dex8_setup.sh
chmod +x ~/dex8_setup.sh
./dex8_setup.sh
```
🧩 Ajustes recomendados

Después de la instalación:

Abre GNOME Tweaks → Apariencia

Tema GTK → Orchis-Dark

Iconos → WhiteSur-dark

Abre Extension Manager y asegúrate de que estén activas:

Dash to Panel

Arc Menu

Blur My Shell

Just Perfection

Reinicia GNOME (Alt + F2, escribe r, Enter) o cierra sesión.

🖼️ Vista previa



🔄 Desinstalación / Restaurar Ubuntu original
```bash
gnome-extensions enable ubuntu-dock@ubuntu.com
sudo rm -rf /usr/share/themes/Orchis*
sudo rm -rf /usr/share/icons/WhiteSur*
gsettings reset org.gnome.desktop.interface gtk-theme
gsettings reset org.gnome.desktop.interface icon-theme
```
