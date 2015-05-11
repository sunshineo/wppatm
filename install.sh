#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

FILE=plugins.txt

k=1
while read line;do
        echo "Downloading $line"
        curl -O $line
        ((k++))
done < $FILE
echo "Downloaded $k plugins. Now unzip all of them."

unzip '*.zip'
