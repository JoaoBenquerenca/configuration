# file="/etc/X11/xorg.conf.d/20-intel.conf"
file="test.txt"
echo 'Section "Device"'             >  $file
echo ' Identifier "Intel Graphics"' >> $file
echo ' Driver "intel"'              >> $file
echo ' Option "TearFree" "true"'    >> $file
echo 'EndSection' >> $file
