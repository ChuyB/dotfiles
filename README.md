# Dotfiles

This repository contains my personal configuration files (dotfiles) for macOS  and Unix-like systems. These files help set up my development environment, shell, editor, and other tools.

## Usage

1. Clone the repository:
   ```sh
   git clone https://github.com/<your-username>/dotfiles.git ~/dotfiles
   ```
2. Symlink the desired files to your home directory using GNU Stow. It will overwrite existing files:
   ```sh
   sudo chmod +x init.sh && ./init.sh
   ```

