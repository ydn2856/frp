#/bin/sh

apt-get install -y git
git clone https://github.com/ar414-com/nginx-geoip2 /tmp/geoip
cd /tmp/geoip
tar -zxvf GeoLite2-City_20200519.tar.gz
tar -zxvf GeoLite2-Country_20200519.tar.gz
mkdir /var/geoip2
mv ./GeoLite2-Country_20200519/GeoLite2-Country.mmdb /var/geoip2
mv ./GeoLite2-City_20200519/GeoLite2-City.mmdb /var/geoip2

