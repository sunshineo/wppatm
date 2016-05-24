#!/bin/bash

# Assuming we are in folder wp-content
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

if [ ! -d "plugins" ]; then
	mkdir plugins
	#TODO: permission issues?
fi

# Install all plugins
cd plugins

FILE=../plugins.txt

k=1
while read line;do
        echo "Downloading $line"
        curl -O $line
        ((k++))
done < $FILE
echo "Downloaded $k plugins. Now unzip all of them."

unzip -o '*.zip'

cd ..

# Install all themes
if [ ! -d "themes" ]; then
	mkdir themes
	#TODO: permission issues?
fi

# Install all plugins
cd themes

FILE=../themes.txt

k=1
while read line;do
        echo "Downloading $line"
        curl -O $line
        ((k++))
done < $FILE
echo "Downloaded $k themes. Now unzip all of them."

unzip -o '*.zip'