# Replace foo pattern with bar
sed -i 's/foo/bar/g' *


# Find and replace with sed in directory and sub directories
find ./ -exec sed -i 's/apple/orange/g' {} \;
