**_Managed by chezmoi_**

Operating systems: macOS, Arch Linux

# Prerequisites

## [Homebrew](https://brew.sh)

**macOS**

```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## [yay](https://github.com/Jguer/yay)

**Arch Linux**

```shell
$ pacman -S --needed git base-devel
$ git clone https://aur.archlinux.org/yay.git
$ cd yay
$ makepkg -si
```

## [chezmoi](https://www.chezmoi.io)

```shell
$ brew install chezmoi # on macOS
$ yay -S chezmoi # on Arch Linux

$ chezmoi init https://github.com/nachtjasmin/dotfiles.git
```

## TODO

- Install prerequisites using scripts
