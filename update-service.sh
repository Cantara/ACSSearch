#!/bin/sh

A=AcsSearch
version=0.0.1
JARFILE=$A-$V.jar

pkill -f $A

# Artifactory location
server="http://mvnrepo.cantara.no"
repo="content/repositories/releases/com/altran"

# Maven artifact location
name=$A-$version
path="$server/$repo/$A"
echo "Version $version"
jar="$A-$version.jar"
url="$path/$version/$jar"

# Download
echo $url
wget -O $JARFILE -q -N $url
