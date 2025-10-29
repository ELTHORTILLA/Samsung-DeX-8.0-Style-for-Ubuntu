# Samsung DeX 8.0 Style for Ubuntu

Transforma tu escritorio **Ubuntu 24.04 GNOME** en un entorno visual tipo **Samsung DeX 8.0**, con barra inferior translúcida, menú de aplicaciones estilo Android y estética moderna.

---

## ✨ Características
- Tema **Orchis Dark** (One UI look)  
- Íconos **WhiteSur Dark**  
- Dock inferior con **Dash to Panel**  
- Menú tipo launcher con **Arc Menu**  
- Efecto vidrio con **Blur My Shell**  
- Interfaz limpia mediante **Just Perfection**

---

## ⚙️ Instalación rápida


```bash
wget -O ~/dex8_setup.sh https://github.com/ELTHORTILLA/Samsung-DeX-8.0-Style-for-Ubuntu.git
chmod +x ~/dex8_setup.sh
./dex8_setup.sh

```

Después de la instalación:

Reinicia GNOME (Alt + F2, escribe r) o cierra sesión.

Selecciona GNOME on Xorg en la pantalla de login.

---

🧩 Requisitos

Ubuntu 24.04 LTS (GNOME 46+)

Conexión a Internet

Permisos sudo


---

🖌️ Ajustes opcionales

Usa GNOME Tweaks o Extension Manager para personalizar temas, iconos y comportamiento de extensiones.

---

Desinstalación
🧹 Desinstalación

```bash
gnome-extensions enable ubuntu-dock@ubuntu.com
sudo rm -rf /usr/share/themes/Orchis*
sudo rm -rf /usr/share/icons/WhiteSur*
bash
```

---
Autor: ThortiDev
Licencia: MIT
