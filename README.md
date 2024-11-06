# 👩‍💻 Personal dotfiles, managed by chezmoi

## Installation

### Clients

To install my dotfiles on any machine, run the following command:

```shell
sh -c "$(curl -fsLS chezmoi.io/get)" -- -b "${HOME}/.local/bin/" init --apply nachtjasmin
```

### Servers

Servers do not need the Git configuration, but do benefit from the installation of several tools.

```shell
sh -c "$(curl -fsLS chezmoi.io/get)" -- -b "${HOME}/.local/bin/" init --promptBool "Target is server=true" --apply nachtjasmin
```

### Visual Studio Code / Codespaces

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
