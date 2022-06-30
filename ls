# List dotfiles
ls -al | grep '^-' | awk '{print $9}' | grep '^\.'
