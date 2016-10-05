#!/bin/sh
##
## sc.sh
## 
## Made by Ingrid Zabylel Cabrera Valenzuela
## Login   <izcabrera@ltsp175.example.com>
## 
## Started on  Tue Aug 30 11:33:49 2016 Ingrid Zabylel Cabrera Valenzuela
## Last update Time-stamp: <2016-ago-30.martes 11:35:24 (izcabrera)>
##

egrep -v 'PRES|hPa' datos2015.txt | egrep '76225|Show|LIFT|SWEAT|K|Totals|virtual|CAPV|Lifted|thickness|Precip' > df.csv
