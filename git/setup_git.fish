echo "Setup Git Configuration"

# Set user
git config --global user.name  "Andreas Tietgen"
git config --global user.email "9461145+Arneproductions@users.noreply.github.com"

# Set credential manager
git config --global credential.helper "/usr/local/share/gcm-core/git-credential-manager"

# Set editor for commit messages
git config --global core.editor "vim"

# Set pull configurations
git config --global pull.rebase false

# Set push configurations
git config --global push.autoSetupRemote true
