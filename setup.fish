#!/usr/bin/env fish

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