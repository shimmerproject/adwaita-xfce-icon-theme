# Adwaita-Xfce icon theme

This icon theme is an extension for Adwaita fixing missing icons that are used in Xfce. It is not a complete theme and inherits the bulk of icons from Adwaita.

## Requirements

You need the original adwaita icon theme installed in your system

## Installation

You can use the Makefile to install the theme locally (default prefix is /usr/local).


### Installation for the current user only (without admin privileges)

```
./configure --prefix=$HOME/.local
make
make install
make icon-caches
```

### Installation for all users (default path is /usr/local)

```
./configure
make
sudo make install
sudo make icon-caches
```

## Usage

1. Open Xfce Settings > Appearance > Icons
2. Select Adwaita-Xfce