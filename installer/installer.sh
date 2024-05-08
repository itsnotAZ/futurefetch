#!/bin/bash

install() {
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
    wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.3.0/futurefetch
    sudo chmod +x futurefetch
    sudo mv futurefetch /usr/bin
    echo "Downloading config script"
    wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.3.0/ffetchconfig 
    sudo mv ffetchconfig /etc
    echo "Setup complete!"
    echo "If setup was successful, configure the ffetchconfig located in /etc by running 'futurefetch -e'"
    exit 0
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "MacOS X detected..."
    echo "installer.sh does not support automatic installation of dependenices on your OS."
    echo "please install the following dependenices manually:"
    echo -e "- bash\n- nano\n- sudo\n- wget"
    echo "Downloading futurefetch..."
    wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.3.0/futurefetch
    sudo chmod 755 futurefetch
    sudo mv futurefetch /usr/bin
    echo "Downloading config script"
    wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.3.0/ffetchconfig 
    sudo mv ffetchconfig /etc
    echo "Setup complete!"
    echo "If setup was successful, configure the ffetchconfig located in /etc by running 'futurefetch -e'"
    exit 0
  elif [[ "$OSTYPE" == "cygwin"* ]]; then
    echo "Cygwin detected... (Windows)"
    echo "installer.sh does not support automatic installation of dependenices on your OS."
    echo "please install the following dependenices manually:"
    echo -e "- bash\n- util-linux\n- nano\n- wget\n- xrandr\n- grep\n- gawk\n- coreutils"
    echo "Downloading futurefetch..."
    wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.3.0/futurefetch
    cygstart --action=runas chmod +x futurefetch
    cygstart --action=runas mv futurefetch /usr/bin
    echo "Downloading config script"
    wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.3.0/ffetchconfig 
    cygstart --action=runas mv ffetchconfig /etc
    echo "Setup complete!"
    echo "If setup was successful, configure the ffetchconfig located in /etc by running 'futurefetch -e'"
    exit 0
  else
    echo -e "\033[0;32mERROR (installer.sh): Unsupported Operating System"
  fi
}

if [ -f /etc/ffetchconfig ]
then
  if [ -f /usr/bin/futurefetch ]
  then
    #ver=$(head -n 2 "/etc/ffetchconfig" | tail -1
    echo "The installer has detected that you already have an older version of futurefetch)" # --> $ver"
    read -p "Would you like to preserve your previous config [y/n]" ynone
    if [[ "$ynone" == "y" ]] || [[ "$ynone" == "Y" ]] || [[ "$ynone" == "yes" ]] || [[ "$ynone" == "YES" ]]
    then
      echo "Updating config..."
      echo "" >> /etc/ffetchconfig
      echo "CONFIG CREDITS" >> /etc/ffetchconfig
      echo "---------" >> /etc/ffetchconfig
      echo "\033[0;36mConfigName by ConfigMaker (configmaker.com)" >> /etc/ffetchconfig
      echo "Updating futurefetch script..."
      wget https://github.com/itsnotAZ/futurefetch/releases/download/v0.3.0/futurefetch
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
        sudo chmod +x futurefetch
        sudo rm /usr/bin/futurefetch
        sudo mv futurefetch /usr/bin
      elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "MacOS X detected..."
        echo "installer.sh does not support automatic installation of dependenices on your OS."
        echo "please install the following dependenices manually:"
        echo -e "- bash\n- nano\n- sudo\n- wget"
        sudo chmod 755 futurefetch
        sudo rm /usr/bin/futurefetch
        sudo mv futurefetch /usr/bin
      elif [[ "$OSTYPE" == "cygwin"* ]]; then
        echo "Cygwin detected... (Windows)"
        echo "installer.sh does not support automatic installation of dependenices on your OS."
        echo "please install the following dependenices manually:"
        echo -e "- bash\n- util-linux\n- nano\n- wget\n- xrandr\n- grep\n- gawk\n- coreutils"
        cygstart --action=runas chmod +x futurefetch
        cygstart --action=runas rm /usr/bin/futurefetch
        cygstart --action=runas mv futurefetch /usr/bin
      else
        echo -e "\033[0;32mERROR (installer.sh): Unsupported Operating System"
      fi
      echo "Upgrade complete!"
      echo "If upgrade was successful, configure the ffetchconfig located in /etc by running 'futurefetch -e'"
      exit 0
    elif [[ "$ynone" == "n" ]] || [[ "$ynone" == "N" ]] || [[ "$ynone" == "no" ]] || [[ "$ynone" == "NO" ]]
    then
      install
    else
      echo -e "\033[0;32mERROR (installer.sh): Invalid option $ynone"
    fi 
  else
    install
  fi
else
  install
fi
