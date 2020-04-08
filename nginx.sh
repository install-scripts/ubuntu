# noatime option. device mount
# no asset logging
#location ~ ^/(assets|images|javascripts|stylesheets|swfs|system)/ {
#      gzip_static on;
#      expires     max;
#      add_header  Cache-Control public;
#      add_header  Last-Modified "";
#      add_header  ETag "";
#  }
# Expire rules for static content

# cache.appcache, your document html and data
# location ~* \.(?:manifest|appcache|html?|xml|json)$ {
#  expires -1;
  # access_log logs/static.log; # I don't usually include a static log
#}

# Feed
#location ~* \.(?:rss|atom)$ {
#  expires 1h;
#  add_header Cache-Control "public";
#}

# Media: images, icons, video, audio, HTC
#location ~* \.(?:jpg|jpeg|gif|png|ico|cur|gz|svg|svgz|mp4|ogg|ogv|webm|htc)$ {
#  expires 1M;
#  access_log off;
#  add_header Cache-Control "public";
#}

# CSS and Javascript
#location ~* \.(?:css|js)$ {
#  expires 1y;
#  access_log off;
#  add_header Cache-Control "public";
#}


# Note that these are defined outside of the server block,
# altho they don't necessarily need to be
#proxy_cache_path /tmp/nginx levels=1:2 keys_zone=my_zone:10m inactive=60m;
#proxy_cache_key "$scheme$request_method$host$request_uri";

#server {
    # Note that it's listening on port 80
#    listen 80 default_server;
#    root /var/www/;
#    index index.html index.htm;
#
#    server_name example.com www.example.com;
#
#    charset utf-8;
#
#    location / {
#        proxy_cache my_zone;
#        add_header X-Proxy-Cache $upstream_cache_status;
#
#        include proxy_params;
#        proxy_pass http://172.17.0.18:9000;
#    }
#}
