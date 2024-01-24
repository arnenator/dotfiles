echo "Setup Git Configuration"

# Set user
git config --global user.name  "Andreas Tietgen"
git config --global user.email "9461145+Arneproductions@users.noreply.github.com"

# Set editor for commit messages
git config --global core.editor "vim"

# Set pull configurations
git config --global pull.rebase false

# Set push configurations
git config --global push.autoSetupRemote true
