target_dir="$HOME/.config"

stow_targets_folders=(
  ghostty
)

stow_targets_root=(
  p10k
  tmux
  zsh
)

stow_config_folders() {
  for target in "${stow_targets_folders[@]}"; do
    stow --adopt -t "$target_dir/$target" "$target"
  done
}

stow_config_root() {
  for target in "${stow_targets_root[@]}"; do
    stow --adopt -t "$HOME" "$target"
  done
}

stow_config_folders
stow_config_root

# Return to original state
git reset --hard
