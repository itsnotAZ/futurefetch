#!/bin/bash

# THE INSTALLER HAS CURL AS A DEPENDENCY!!

echo "Downloading futurefetch..."
curl https://raw.githubusercontent.com/itsnotAZ/futurefetch/main/futurefetch --output futurefetch
sudo mv futurefetch /usr/bin
cd /usr/bin
sudo chmod +x futurefetch
echo "Downloading config script"
curl https://raw.githubusercontent.com/itsnotAZ/futurefetch/main/ffscriptbase/ffetchscript --output ffetchscript
sudo mv ffetchscript /etc
echo "Setup complete!"
echo "To configure the ffetchscript located in /etc use a texteditor ran as super user."
echo "Enjoy!"
