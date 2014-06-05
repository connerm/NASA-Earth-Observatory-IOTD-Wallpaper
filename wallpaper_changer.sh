#!/bin/bash

wget http://earthobservatory.nasa.gov/IOTD/

image_url=`grep -o '<a href=\"view\.php.id=.*src.\".*jpg' index.html | cut -d '"' -f4 | sed -e 's/front/lrg/g' `


wget $image_url

image=`ls *.jpg`

osascript -e 'tell Application "Finder"' -e 'set the desktop picture to {"Macintosh HD:Users:connermcconkey:Pictures:earthobservatory.nasa.gov.IOTD:'$image'"} as alias' -e 'end tell'

rm *.jpg *.html 
