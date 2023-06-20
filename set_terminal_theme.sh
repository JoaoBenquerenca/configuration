# clone the repo into "$HOME/src/gogh"
mkdir -p "$HOME/src"
cd "$HOME/src"
git clone https://github.com/Gogh-Co/Gogh.git gogh
cd gogh

export TERMINAL=gnome-terminal

# Enter theme installs dir
cd installs

# install theme
./3024-night.sh 

# cleanup
cd ~
rm -r src/
