#!/bin/bash

# ensure we have directories available
mkdir -p ../css
mkdir -p ../js
mkdir -p ../fonts

# LESS files to render
echo "compiling LESS files..."
lessc -x less/style.less > ../css/style.min.css

# move vendor files into appropriate directories
cp -rf vendor/bootstrap/css/*.min.css ../css
cp -rf vendor/bootstrap/js/*.min.js ../js
cp -rf vendor/bootstrap/fonts/* ../fonts

echo "finished!"