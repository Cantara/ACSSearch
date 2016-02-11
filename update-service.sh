#!/bin/sh

A=AcsSearch
version=0.0.1
jar="$A-$version.jar"

pkill -f $A

# Artifactory location
server="http://mvnrepo.cantara.no"
repo="content/repositories/releases/com/altran"

# Maven artifact location
path="$server/$repo/$A"
echo "Version $version"

url="$path/$version/$jar"

# Download
echo "Downloading $url"
wget -O $jar -q -N $url
