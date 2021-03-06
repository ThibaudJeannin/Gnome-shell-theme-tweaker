#!/bin/sh


SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

gnomeCSS=/usr/share/themes/Adapta-Nokto/gnome-shell/gnome-shell.css

tmpCSS=$SCRIPTPATH/tmp.css

initialCSS='-panel-corner-radius: 0; -panel-corner-background-color: rgba(19, 25, 28, 0.01);'
newCSS='-panel-corner-radius: 8px; -panel-corner-background-color: rgba(19, 25, 28, 1);'

cat $gnomeCSS | sed -e "s/$initialCSS/$newCSS/g" > $tmpCSS
sudo mv $tmpCSS $gnomeCSS

echo  'Rounded corners applied'
