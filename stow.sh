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
#
# Return to original state
read -p "This will overwrite all files with the contents of the last commit in the current branch. Are you sure? [y/N] " confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
  git reset --hard
else
  echo "Files were not overwritten."
fi
