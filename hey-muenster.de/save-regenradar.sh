#!/bin/bash

NOWDATE=`date +"%Y%m%d%H%M"`
FILENAME_DE=regen-de-$NOWDATE.jpg
FILENAME_NRW=regen-nrw-$NOWDATE.jpg

WEEKNR=`date +"%V"`
DIRPATH=public/regen/img/$WEEKNR/


[ ! -d $DIRPATH ] && mkdir $DIRPATH

echo

wget https://www.dwd.de/DWD/wetter/radar/rad_brd_akt.jpg -O $DIRPATH$FILENAME_DE
wget https://www.dwd.de/DWD/wetter/radar/rad_nrw_akt.jpg -O $DIRPATH$FILENAME_NRW

