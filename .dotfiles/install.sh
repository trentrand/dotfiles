dotfiles_command='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo "alias dotfiles='$dotfiles_command'" >> $HOME/.zshrc

# Default settings
eval $dotfiles_command config --local status.showUntrackedFiles no

# Install plugins stored as git submodules in ~/.dotfiles/plugins
git submodule update --init --recursive

# Install plugins from Homebrew package manager
brew install neovim
