**NEXT UPDATE WILL BE REWRITEN IN PYTHON SO ALL CURRENT CONFIGS WILL BE LOST**

![epicus](https://github.com/itsnotAZ/futurefetch/blob/main/assets/thing2.png "yes")\
**THIS TOOL IS STILL IN EARLY ALPHA SO IT IS MISSING FEATURES**

# futurefetch
Spiritual Successor to **[neofetch](https://github.com/dylanaraps/neofetch)** *by [dylanaraps](https://github.com/dylanaraps)* for GNU/Linux *(and possibly other Unix/Unix-like systems)*

<p align="center"><img src="https://github.com/itsnotAZ/futurefetch/blob/main/assets/thing.png" /></p>
<p align="center"><em>picture of stock futurefetch 0.2.0 (stock config) running on Fedora Linux</em></p>

## tf?
futurefetch is a tool to display useful system information in a visually appealing way. *(yeah that is pretty much it :D)*

## The Idea
So basically with neofetch, OS developers had to go to the neofetch repo to request support for their operating system or fork neofetch and make their own custom version to host on their repos. Futurefetch basically aims to completely change that, and instead of me having to add support for millions upon millions of Operating Systems on my tool, developers can just customize one file in their OS's `etc` directory and ship the futurefetch tool with their product. 

## Installation
To avoid having to create packages for all the formats out there, each release will have a downloadable script (`installer.sh`) that will work on GNU/Linux *(and possibly other Unix-like systems)* that any developer can integrate into their project. Download the latest one on the [releases](https://github.com/itsnotAZ/futurefetch/releases) tab. **DO NOT DOWNLOAD DIRECTLY FROM THE REPO, GO TO THE RELEASES TAB**

Alternatively, if you are not interested in developing an operating system, but your OS Developer has not implemented futurefetch support, you can make your own! (See [contributing](https://github.com/itsnotAZ/futurefetch/blob/main/README.md#contributing))

If you want to create a package for a distro's repo, feel free but I will not provide support. Just fork the repo and do the necessary changes.

After installation, run `futurefetch` and enjoy!

## Usage

**-h/--help**       : shows this menu\
**-c/--credits**    : shows the credits only"\
**-n/--nologo**     : does not show the logo\
**-i/--noinfo**     : does not show the info\
**-e/--editconfig** : opens the config in GNU Nano (with sudo)

## Officially Supported OS

- GNU/Linux
- MacOS **i do not own a mac so yeah, i'd appreciate someone owning a mac contributing to this project :D*
- Cygwin (Windows) **incomplete*

*i'd appreciate someone helping me on freebsd support :)*

## Roadmap

**THIS IS ALL SUBJECT TO CHANGE!*

**0.3.0**

- [x] Experiemental MacOSX support
- [x] Cygwin support
- [x] futurefetch now has arguements to launch with
- [x] Credit system for config creators
- [x] Autoinstall dependencies for some distros
- [x] Installer adapts to the host OS
- [x] Backwards compatibillity

**0.3.1**

- [ ] Rewrite the entire thing in Python

## Dependencies:

**FOR LINUX**

`installer.sh` will automate the installation of the following packages on some distros and their derivatives (Debian, Arch and Fedora):

- bash
- lshw
- util-linux
- nano
- sudo
- xrandr
- grep
- gawk
- coreutils
- wget *(for the installer)*

additionally, futurefetch requires the following things inside `/etc/os-release`:

- `NAME=`
- `VERSION=`
- `HOME_URL=`

**FOR MACOS**

you can install these using a tool like [Homebrew](https://brew.sh/):

- nano
- sudo
- bash
- wget *(for the installer)*

**FOR CYGWIN (WINDOWS)**

make sure you have installed the following packages during your cygwin setup

- bash
- util-linux
- nano
- xrandr
- grep
- gawk
- coreutils
- wget *(for the installer)*

## Contributing

Please contribute if you can :D, also if you contribute, add urself to `CONTRIBUTORS.md`

You can also make your own configs over at https://github.com/itsnotAZ/futurefetch-configs (there are instructions).
