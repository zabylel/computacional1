#!/bin/sh
##
## sc.sh
## 
## Made by Ingrid Zabylel Cabrera Valenzuela
## Login   <izcabrera@ltsp175.example.com>
## 
## Started on  Tue Aug 30 11:33:49 2016 Ingrid Zabylel Cabrera Valenzuela
## Last update Time-stamp: <2016-sep-13.martes 17:38:30 (izcabrera)>
##

egrep -v 'PRES|hPa' datos2015.txt | egrep '76225|CAPE|CINS' > dff.csv
