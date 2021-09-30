FROM nginx:1.14-alpine

ADD entrypoint.sh /bin/

ENV NGX_DOC_ROOT=/data/web/html

RUN mkdir -p ${NGX_DOC_ROOT}

CMD ["/usr/sbin/nginx","-g","daemon off;"]

ENTRYPOINT ["/bin/entrypoint.sh"]
