#!/bin/bash
geoip_dir='/usr/local/share/GeoIP';
dat_file_url='http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz';
cd $geoip_dir;
/usr/bin/wget $dat_file_url;
mv -f GeoLiteCity.dat GeoLiteCity.dat.bak
/bin/gunzip GeoLiteCity.dat.gz
rm -f GeoLiteCity.dat.gz
