#!/bin/bash
set -e

echo "Creating project..."

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

mkdir -p project
cd project

git init

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

git add .
git commit -m "initial commit"

sleep 3
echo "Setup project..."


echo "Welcome to my project" > README.md


rm -rf src/profile
rm -f "resources/family picture.jpg"


git add .
git commit -m "Remove profile folder and family picture"

sleep 3


ls resources

echo "Setup javascript..."

mv src/program.java src/program.js
echo "console.log('JavaScript works!');" > src/program.js


node src/program.js


git add .
git commit -m "Setup JavaScript program"


ls ~

echo "All done!"
