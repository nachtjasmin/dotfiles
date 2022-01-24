# 👩‍💻 Personal dotfiles, managed by chezmoi

_Operating systems: macOS, Arch Linux, Ubuntu (partially)_

## Installation

To install chezmoi, copy the dotfiles and purge the binary afterwards (it'll install itself using
the package managers), run the following command:

```shell
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --ssh --purge-binary --apply chloe-the-catgirl
```
