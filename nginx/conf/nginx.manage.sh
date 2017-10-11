#!/bin/bash
#20170707 NGINX

BINDIR=/usr/local/webserver/nginx12
LOGDIR=/data/logs
LOGLINE=5000

# Nginx
function ngx_start() {
  ${BINDIR}/sbin/nginx -c ${BINDIR}/conf/nginx.conf
}

# ֹͣ Nginx
function ngx_stop() {
  ${BINDIR}/sbin/nginx -c ${BINDIR}/conf/nginx.conf -s stop
}

# ���¼��������ļ�
function ngx_reload() {
  ${BINDIR}/sbin/nginx -c ${BINDIR}/conf/nginx.conf -s reload
}

# ��������ļ��﷨
function ngx_test() {
  ${BINDIR}/sbin/nginx -c ${BINDIR}/conf/nginx.conf -t
}

case "$1" in
  start)
   ngx_start
  ;;
  stop)
   ngx_stop
  ;;
  restart)
   ngx_stop
   sleep 1
   ngx_start
  ;;
  reload)
   ngx_reload
  ;;
  test)
   ngx_test
  ;;
  *)
   echo "ʹ��˵��: $0 {start|stop|reload|test|stat|block|merge|rotate}"
   echo "����˵����"
   echo "start   ���� Nginx ����"
   echo "stop    �ر� Nginx ����"
   echo "restart ���� Nginx ����"
   echo "reload  ���¼��� Nginx �����ļ�"
   echo "test    ��������ļ��﷨�Ƿ���ȷ"
   exit 3
 ;;
esac
