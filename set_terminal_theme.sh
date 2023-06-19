# clone the repo into "$HOME/src/gogh"
mkdir -p "$HOME/src"
cd "$HOME/src"
git clone https://github.com/Gogh-Co/Gogh.git gogh
cd gogh

# necessary in the Gnome terminal on ubuntu
export TERMINAL=gnome-terminal

# necessary in the Alacritty terminal
pip install -r requirements.txt
export TERMINAL=alacritty

# Enter theme installs dir
cd installs

# install theme
./3024-night.sh 

# cleanup
cd ~
rm -r src/
