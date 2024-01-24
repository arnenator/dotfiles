#!/usr/bin/env fish

brew bundle install --file ./Brewfile

# Setup fish configurations
fish -c '
    cd ./fish
    fish setup_fish.fish
'

# Setup VS Code
fish -c '
    cd ./vscode
    fish setup_code.fish
'

fish -c '
    cd ./git
    fish setup_git.fish
'