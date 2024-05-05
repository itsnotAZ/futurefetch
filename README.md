![amogus](https://github.com/itsnotAZ/futurefetch/assets/155894291/ef7aa044-51c9-4781-aec7-0ee89514e9f8)\
**THIS TOOL IS STILL IN EARLY ALPHA SO IT IS MISSING FEATURES**

# futurefetch
Spiritual Successor to **[neofetch](https://github.com/dylanaraps/neofetch)** *by [dylanaraps](https://github.com/dylanaraps)* for GNU/Linux *(and possibly other Unix/Unix-like systems)*

<p align="center"><img src="https://github.com/itsnotAZ/futurefetch/assets/155894291/05d63241-3287-4e41-9919-de526574275b" /></p>
<p align="center"><em>picture of stock futurefetch 0.2.0 (stock config)</em></p>

## tf?
futurefetch is a tool to display useful system information in a visually appealing way. *(yeah that is pretty much it :D)*

## The Idea
So basically with neofetch, OS developers had to go to the neofetch repo to request support for their operating system or fork neofetch and make their own custom version to host on their repos. Futurefetch basically aims to completely change that, and instead of me having to add support for millions upon millions of Operating Systems on my tool, developers can just customize one file in their OS's `etc` directory and ship the futurefetch tool with their product. 

## Installation
To avoid having to create packages for all the formats out there, each release will have a downloadable script (`installer.sh`) that will work on GNU/Linux *(and possibly other Unix-like systems)* that any developer can integrate into their project. Download the latest one on the [releases](https://github.com/itsnotAZ/futurefetch/releases) tab. **DO NOT DOWNLOAD DIRECTLY FROM THE REPO, GO TO THE RELEASES TAB**

Alternatively, if you are not interested in developing an operating system, but your OS Developer has not implemented futurefetch support, you can make your own `ffetchconfig` and submit it as an issue or as a pull request here on this repo so I can add it to the `config repository`!

If you want to create a package for a distro's repo, feel free but I will not provide support. Just fork the repo and do the necessary changes.

After installation, run `futurefetch` and enjoy!

## Dependencies:

- bash
- lshw
- util-linux
- nano
- sudo
- wget *(for the installer)*

**additionally, futurefetch requires the following stuff inside** `/etc/os-release`**:**

- `NAME=`
- `VERSION=`
- `HOME_URL=`
