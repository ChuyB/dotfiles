target_dir="$HOME/.config"

stow_targets_folders=(
  sesh
  ghostty
)

stow_targets_root=(
  p10k
  tmux
  zsh
)

stow_config_folders() {
  echo "Stowing config folders to $target_dir..."
  for target in "${stow_targets_folders[@]}"; do
    dest="$target_dir/$target"
    if [ ! -d "$dest" ]; then
      echo "Creating directory: $dest"
      mkdir -p "$dest"
    else
      echo "Directory exists: $dest"
    fi
    echo "Stowing $target into $dest"
    stow --adopt -t "$dest" "$target"
  done
  echo "Finished stowing config folders."
}

stow_config_root() {
  echo "Stowing root config files to $HOME..."
  for target in "${stow_targets_root[@]}"; do
    echo "Stowing $target into $HOME"
    stow --adopt -t "$HOME" "$target"
  done
  echo "Finished stowing root config files."
}

stow_config_folders
stow_config_root

echo "Do you want to reset to last commit? This action cannot be undone."
read -p "This will overwrite all files with the contents of the last commit in the current branch. Do you want to continue? [y/N] " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
  git reset --hard
else
  echo "Files were not overwritten."
fi
