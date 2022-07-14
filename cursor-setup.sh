echo "extracting Simple Dark to ~/.local/share/icons"
$ tar xvf Simp1e-Dark.tar.gz -C ~/.local/share/icons

echo "Making cursor default theme file at ~/.icons/default/..."
mkdir ~/.icons/default/
touch ~/.icons/default/index.theme

echo "Setting theme..."
echo "[icon theme]\nInherits=Simp1e-Dark" > ~/.icons/default/index.theme

echo "GTK theme change..."

touch ~/.config/gtk-3.0/settings.ini
echo "[Settings]\ngtk-cursor-theme-name=Simp1e-Dark" > ~/.config/gtk-3.0/settings.ini


echo "Success!"
