echo "Making fonts directory..."
mkdir -p ~/.local/share/fonts/ -p
echo "Moving Meslo fonts to ~/.local/share/fonts ..."
cp Meslo* ~/.local/share/fonts

sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
