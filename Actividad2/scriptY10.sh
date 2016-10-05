#!/bin/bash

# Despues de editar: chmod 755 script1.sh
# Para ejecutar: ./script1.sh

IFS=":"
# Years: 1981-1990
#LISTYs="2001:2002:2003:2004:2005:2006:2007:2008:2009:2010"
#LISTYs="1991:1992:1993:1994:1995:1996:1997:1998:1999:2000"
LISTYs="1981:1982:1983:1984:1985:1986:1987:1988:1989:1990"

# Months by number of days
LISTM31="01:03:05:07:08:10:12"
#LISTM31="01:03:05:07"
LISTM30="04:06:09:11"
#LISTM30="04:06"
LISTM28="02"

for j in $LISTYs ; do
# Script para bajar info por mes. Año 2011, dentro del URL:  YEAR=2011
# Months 31 days
for i in $LISTM31 ; do
	/usr/local/bin/wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=$j&MONTH=$i&FROM=0100&TO=3112&STNM=76692"
        /bin/sleep 5
done
# Months 30 days
for i in $LISTM30 ; do
	/usr/local/bin/wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=$j&MONTH=$i&FROM=0100&TO=3012&STNM=76692"
        /bin/sleep 5
done
# Feb. 28 days
for i in $LISTM28 ; do
	/usr/local/bin/wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=$j&MONTH=$i&FROM=0100&TO=2812&STNM=76692"
        /bin/sleep 5
done
done
