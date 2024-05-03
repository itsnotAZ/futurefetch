#!/bin/bash

# THE INSTALLER HAS WGET AS A DEPENDENCY!!

echo "Downloading futurefetch..."
wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/futurefetch
sudo chmod +x futurefetch
sudo mv futurefetch /usr/bin
echo "Downloading config script"
wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/ffetchconfig 
sudo mv ffetchconfig /etc
echo "Setup complete!"
echo "If setup was successful, configure the ffetchconfig located in /etc using a texteditor ran as super user."
