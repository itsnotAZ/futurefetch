#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "GNU/Linux detected..."
  if [ -f /usr/bin/dnf ]
  then
    echo "Distro is (or is based on) Fedora Linux..."
    echo "Installing Dependencies..."
    sudo dnf install bash lshw util-linux nano sudo wget xrandr grep gawk coreutils
  if [ -f /usr/bin/apt ]
  then
    echo "Distro is (or is based on) Debian Linux..."
    echo "Installing Dependencies..."
    sudo apt install bash lshw util-linux nano sudo wget x11-xserver-utils grep gawk coreutils
  if [ -f /usr/bin/pacman ]
  then
    echo "Distro is (or is based on) Arch Linux"
    echo "Installing Dependencies..."
    sudo pacman -Sy bash lshw util-linux nano sudo wget xorg-xrandr grep gawk coreutils
  else
    echo "installer.sh does not support automatic installation of dependenices on your distro."
    echo "please install the following dependenices manually:"
    echo -e "- bash\n- lshw\n- util-linux\n- nano\n- sudo\n- wget\n- xrandr\n- grep\n- gawk\n- coreutils"
  fi
  echo "Downloading futurefetch..."
  wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/futurefetch
  sudo chmod +x futurefetch
  sudo mv futurefetch /usr/bin
  echo "Downloading config script"
  wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/ffetchconfig 
  sudo mv ffetchconfig /etc
  echo "Setup complete!"
  echo "If setup was successful, configure the ffetchconfig located in /etc by running 'futurefetch -e'"
  exit 0
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "MacOS X detected..."
  echo "Downloading futurefetch..."
  wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/futurefetch
  sudo chmod 755 futurefetch
  sudo mv futurefetch /usr/bin
  echo "Downloading config script"
  wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/ffetchconfig 
  sudo mv ffetchconfig /etc
  echo "Setup complete!"
  echo "If setup was successful, configure the ffetchconfig located in /etc by running 'futurefetch -e'"
  exit 0
fi
elif [[ "$OSTYPE" == "cygwin"* ]]; then
  echo "Cygwin detected... (Windows)"
  echo "Downloading futurefetch..."
  wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/futurefetch
  cygstart --action=runas chmod +x futurefetch
  cygstart --action=runas mv futurefetch /usr/bin
  echo "Downloading config script"
  wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.2.0/ffetchconfig 
  cygstart --action=runas mv ffetchconfig /etc
  echo "Setup complete!"
  echo "If setup was successful, configure the ffetchconfig located in /etc by running 'futurefetch -e'"
  exit 0

