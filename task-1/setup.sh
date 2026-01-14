<<<<<<< HEAD
#!/bin/bash
set -e

echo "Creating project..."

# Always run from the folder where this script is (task-1)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Start clean each time
rm -rf project

# Create project folder + init git repo
mkdir -p project
cd project
git init

# Ensure git commits work in any environment (CI/autograder)
git config user.name "Student"
git config user.email "student@example.com"

# Create required structure (empty files)
touch README.md
mkdir -p resources
touch "resources/family picture.jpg"
touch resources/icon.png
touch resources/logo.png
touch settings.conf

mkdir -p src
touch src/program.java
mkdir -p src/profile
mkdir -p src/database

# First commit
git add .
git commit -m "initial commit"

sleep 3

echo "Setup project..."

# Write to README.md
echo "Welcome to my project" > README.md

# Remove profile folder + family picture
rm -rf src/profile
rm -f "resources/family picture.jpg"

# Second commit
git add .
git commit -m "Remove profile folder and family picture"

sleep 3

# Show contents of the resources folder
ls resources

echo "Setup javascript..."

# Rename program.java -> program.js and write JS code
mv src/program.java src/program.js
echo "console.log('JavaScript works!');" > src/program.js

# Run program.js with Node.js
node src/program.js

# Third commit
git add .
git commit -m "Setup JavaScript program"

# Show contents of the user's home folder
ls ~

echo "All done!"
=======
>>>>>>> 5e71394 (Fix task 1)
