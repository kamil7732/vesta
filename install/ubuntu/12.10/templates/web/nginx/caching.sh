#!/bin/bash

user=$1
domain=$2
ip=$3
home=$4
docroot=$5

str="proxy_cache_path /var/cache/nginx/$domain levels=2"
str="$str keys_zone=$domain:10m inactive=60m max_size=512m;"
echo "$str" >> /etc/nginx/conf.d/01_caching_pool.conf

