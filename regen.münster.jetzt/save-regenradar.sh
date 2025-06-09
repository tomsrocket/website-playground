#!/bin/bash

NOWDATE=`date --date '-3 min' +"%Y%m%d%H%M"`
FILENAME_DE=regen-de-$NOWDATE.jpg
FILENAME_NRW=regen-nrw-$NOWDATE.jpg

WEEKNR=`date +"%V"`
DIRPATH=public/regen/img/$WEEKNR/


[ ! -d $DIRPATH ] && mkdir $DIRPATH

echo

wget https://www.dwd.de/DWD/wetter/radar/rad_brd_akt.jpg 
convert rad_brd_akt.jpg -quality 60 $DIRPATH$FILENAME_DE
rm rad_brd_akt.jpg

wget https://www.dwd.de/DWD/wetter/radar/rad_nrw_akt.jpg 
convert rad_nrw_akt.jpg -quality 60 $DIRPATH$FILENAME_NRW
rm rad_nrw_akt.jpg
