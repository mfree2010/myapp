#!/bin/sh
cat > /etc/nginx/conf.d/www.conf << EOF
server {

    server_name ${HOSTNAME};
    root ${NGX_DOC_ROOT:-/usr/share/nginx/html};
    listen ${IP:-0.0.0.0}:${PORT:-80};  

}
EOF
cat > /data/web/html/index.html << EOF

    "This is The test web server page for nginx !" 

EOF

exec "$@"
