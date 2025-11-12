# Installation Guide Using GNU Stow

This directory contains configurations for various applications and tools. We use [GNU Stow](https://www.gnu.org/software/stow/) to manage symlinks.

## Prerequisites

```sh
# Debian/Ubuntu
sudo apt install stow

# Arch Linux
sudo pacman -S stow

# Fedora
sudo dnf install stow

# NixOS in CLI
nix-shell -p stow
```

## Basic Usage

### Install a Single Configuration

```sh
# From the repository root directory
stow <folder_name>

# Examples:
stow kitty
stow fish
stow hypr
```

### Install Multiple Configurations at Once

```sh
stow kitty fish rofi
```

### Install All Configurations

```sh
stow */
```

### Uninstall (Remove Symlinks)

```sh
stow -D <folder_name>

# Example:
stow -D kitty
```

## Structure

Each folder contains a directory structure relative to `~/.config/`:

```
kitty/
  .config/
    kitty/
      kitty.conf

fish/
  .config/
    fish/
      config.fish
```

After running `stow kitty`, a symlink will be created:
`~/.config/kitty` → `<repo_path>/kitty/.config/kitty`


## Important Notes

⚠️ **Backup your existing configurations before installation!**

```sh
# Backup example configuration
mv ~/.config/kitty ~/.config/kitty.backup
```

⚠️ Some configurations may require additional dependencies (fonts, icons, etc.)

## Troubleshooting

### Conflict with Existing Files

```sh
# Stow will report an error if a file already exists
# Remove or move the existing file, then try again
```

### Check What Will Be Installed (Dry Run)

```sh
stow -n -v kitty
```