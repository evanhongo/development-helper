#!/bin/sh

# install VSCode extensions
extensionArr=$(cat ./extensions.txt)
for extension in ${extensionArr}
do
  code --install-extension ${extension}
done