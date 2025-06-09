#!/bin/bash

# der cronjob läuft mit 3 minuten Versatz, damit der DWD das Bild auch aktualisiert hat
NOWDATE=`date --date '-3 min' +"%Y%m%d%H%M"`
FILENAME_DE=wolken-de-$NOWDATE.jpg

WEEKNR=`date +"%V"`
DIRPATH=public/regen/img/$WEEKNR/


[ ! -d $DIRPATH ] && mkdir $DIRPATH

echo

wget https://www.wettergefahren.de/DWD/wetter/sat/satwetter/njob_satrad.png -O wolken-aktuell.png
convert wolken-aktuell.png -quality 60 $DIRPATH$FILENAME_DE


du --max-depth=0 -h > public/regen/dirsize.txt
