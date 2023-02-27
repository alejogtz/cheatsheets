# List directories
ls -al ~ | grep '^d'

# List directories, show only name
ls -al ~ | grep '^d' | awk '{print $9}'

# List dotfiles
ls -al | grep '^-' | awk '{print $9}' | grep '^\.'
