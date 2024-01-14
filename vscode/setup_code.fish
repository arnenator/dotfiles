#!/usr/bin/env fish

echo "Installing extensions..."

set ext_categories language theme tool

# Language extensions
for category in $ext_categories
    for ext_name in (cat "./$category.extensions")
        code --install-extension $ext_name
    end
end

echo "Setting User Configuration..."
cp ./settings/user.settings.json ~/Library/Application Support/Code/User/settings.json
