#!/bin/bash

# THE INSTALLER HAS CURL AS A DEPENDENCY!!

echo "Downloading futurefetch..."
curl https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/futurefetch --output futurefetch
sudo chmod +x futurefetch
sudo mv futurefetch /usr/bin
echo "Downloading config script"
curl https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/ffetchconfig --output ffetchconfig
sudo mv ffetchconfig /etc
echo "Setup complete!"
echo "If setup was successful, configure the ffetchconfig located in /etc using a texteditor ran as super user."

