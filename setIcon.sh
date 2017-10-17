#!/bin/sh

if test $# -eq 0
then
  SCRIPT=`realpath $0`
  SCRIPTPATH=`dirname $SCRIPT`
  ICON='ubuntugnome.svg'
  FILE=$SCRIPTPATH/$ICON
  if test -f $FILE
  then
    sudo cp $FILE /usr/share/themes/Adapta-Nokto/gnome-shell/assets/show-apps.svg
    sudo cp $FILE /usr/share/themes/Adapta-Nokto/gnome-shell/assets/show-apps-hover.svg
    sudo cp $FILE /usr/share/themes/Adapta-Nokto/gnome-shell/assets/show-apps-checked.svg
    echo Default icon applied
  else
    echo error : missing default file icon : ubuntugnome.svg
  fi
else
  if test -f $1
  then
    sudo cp $1 /usr/share/themes/Adapta-Nokto/gnome-shell/assets/show-apps.svg
    sudo cp $1 /usr/share/themes/Adapta-Nokto/gnome-shell/assets/show-apps-hover.svg
    sudo cp $1 /usr/share/themes/Adapta-Nokto/gnome-shell/assets/show-apps-checked.svg
    echo Icon applied : $1
  else
    echo error : file not found : $1
  fi
fi


#panel .panel-corner { -panel-corner-radius: 8px; -panel-corner-background-color: rgba(19, 25, 28, 1); -panel-corner-border-width: 0; -panel-corner-border-color: transparent; transition-duration: 0s; }
