echo "Installing extensions..."

$ext_categories = @(
    "language"
    "tool"
    "theme"
)

foreach ($category in $ext_categories) {
    foreach ($extension_name in (gc -Path "./extensions/${extension_name}.extensions")) {
        code --install-extension $extension_name
    }
}

echo "Setting User Configuration..."
copy -Path "./settings/user.settings.json" -Destination "~/${env:APPDATA}/Code/User/settings.json"