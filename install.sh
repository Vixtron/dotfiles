#!/bin/bash

# Dotfiles extractor

echo ""
echo "Extracting dotfiles..."
echo ""

echo "Checking if you have a .config directory..."
mkdir ~/.config

# xfce4-terminal
echo "Checking for config dir..."
mkdir -p ~/.config/xfce4/terminal
echo "Copying XFCE-Terminal config"
cp -rv .config/xfce/terminal/terminalrc ~/.config/xfce4/terminal/terminalrc
echo "Done."

# polybar
echo "Checking for config dir..."
mkdir -p ~/.config/polybar
echo "Copying polybar config"
cp -rv .config/polybar/crim ~/.config/polybar/config
echo "Done."

# compton
echo "Checking for config dir..."
mkdir -p ~/.config/compton
echo "Copying compton config"
cp -rv .config/compton/compton.conf ~/.config/compton/compton.conf
echo "Done."

# neofetch
echo "Checking for config dir..."
mkdir -p ~/.config/neofetch
echo "Copying neofetch config"
cp -rv .config/neofetch/config ~/.config/neofetch/config
echo "Done."

# rofi
echo "Checking for config dir..."
mkdir -p ~/local/share/rofi/themes
echo "Copying rofi config"
cp -rv .local/share/rofi/themes/crim.rasi ~/.local/share/rofi/themes/crim.rasi
echo "Done."

# firefox
echo "Copying firefox userChrome.css to ~/firefox -> move it to ~/.mozilla/firefox/yourprofile.profile/chrome/userChrome.css"
mkdir ~/firefox
cp -rv .mozilla/firefox/.profile/chrome/userChrome.css ~/firefox
cp -rv .mozilla/firefox/.profile/chrome/userContent.css ~/firefox
echo "Done."

# zsh
echo "Checking for config dir..."
mkdir -p ~/.oh-my-zsh/custom
echo "Copying zsh config, install powerlevel9k zsh theme and change your .zshrc theme to powerlevel9k/powerlevel9k for this to take effect"
cp -rv .oh-my-zsh/custom/powerlevel9k.zsh ~/.oh-my-zsh/custom/powerlevel9k.zsh
echo "Done."

# vim colors theme
echo "Checking for config dirs..."
mkdir -p ~/.vim/colors
mkdir -p ~/autoload/airline/themes
echo "Copying vim colors, airline & .vimrc..."
cp -rv .vim/themes/crim.vim ~/.vim/colors/crim.vim
cp -rv .vimrc ~/.vimrc
cp -rv autoload/airline/themes/undead.vim ~/autoload/airline/themes/undead.vim
echo "Done."

# wallpaper
echo "Making a wallpaper directory in ~/Pictures/wlp"
mkdir -p ~/Pictures/wlp
echo "Copying the wallpaper..."
cp -rv Images/deer4.png ~/Pictures/wlp/deer4.png
echo "Done."

# bspwm & sxhkd
echo "Checking for config dirs..."
mkdir -p ~/.config/bspwm
mkdir -p ~/.config/sxhkd
echo "Copying sxhkdrc & bspwmrc"
cp -rv .config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
cp -rv .config/bspwm/sxhkdrc ~/.config/sxhkd/sxhkdrc
echo "Done."

# terminal padding
echo "Checking for config dir..."
mkdir -p ~/.config/gtk-3.0
echo "Copying css file"
cp -rv .config/gtk.css ~/.config/gtk-3.0/gtk.css
echo "Done."

# gtk theme
echo "Extracting gtk theme"
sudo cp -rv .themes/Crim.tar.xz /usr/share/themes
sudo tar -xf /usr/share/themes/Crim.tar.xz && rm Crim.tar.xz
echo "Done."

# sysinfo
echo "Extracting sysinfo to /bin/sysinfo"
sudo cp -rv sysinfo /bin/sysinfo
echo "Done. Run using sysinfo!"

# atom
echo "Extracting Atom theme"
sudo cp -r .atom/packages/one-black-syntax ~/.atom/packages
echo "Done."

echo ""
echo "Configs done extracting, installing deps..."
echo ""

# Installing deps
PACKAGES="bspwm sxhkd xfce4-terminal zsh rofi neofetch compton polybar imwheel ttf-fira-sans ttf-fira-mono noto"

pacaur -S $PACKAGES &> /dev/null && return
read -p "Do you want to install all the deps [y/N] " choice
if [[ "${choice^^}" == Y ]]; then
        pacaur -S $PACKAGES
fi

echo ""
echo "Done extracting configs and installing dependencies!"
echo ""
