# 👩‍💻 Personal dotfiles, managed by chezmoi

_Operating systems: macOS, Arch Linux, Ubuntu (partially)_

## Installation

To install chezmoi, copy the dotfiles and purge the binary afterwards (it'll install itself using
the package managers), run the following command:

```shell
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --purge-binary --apply chloe-the-catgirl
```

or with SSH (recommended for work machines):

```shell
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --ssh --purge-binary --apply chloe-the-catgirl
```

## Visual Studio Code / Codespaces

These dotfiles are prepared for the usage with GitHub Codespaces or Remote Containers
in general. If you add the following lines to the `settings.json`, the dotfiles are installed
automatically:

```json
{
  "dotfiles.repository": "your-github-id/your-dotfiles-repo",
  "dotfiles.targetPath": "~/dotfiles",
  "dotfiles.installCommand": "~/dotfiles/install.sh"
}
```

Just be warned: because this installation is not interactive, the data for the Git user data
is prefilled.
