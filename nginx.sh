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
