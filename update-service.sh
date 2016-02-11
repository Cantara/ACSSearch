#!/bin/sh

A=AcsSearch
V=0.0.1
JARFILE=$A-$V.jar

pkill -f $A

# Artifactory location
server="http://mvnrepo.cantara.no"
repo="content/repositories/releases/com/altran"

# Maven artifact location
name=$A-$V
path="$server/$repo/$A"
echo "Version $version"
jar="$A-$V.jar"
url="$path/$version/$jar"

# Download
echo $url
wget -O $JARFILE -q -N $url
