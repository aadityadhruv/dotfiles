echo "Making fonts directory..."
mkdir -p ~/.local/share/fonts/
echo "Moving Meslo fonts to ~/.local/share/fonts ..."
mv Meslo* ~/.local/share/fonts

sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
