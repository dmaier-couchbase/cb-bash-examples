if [ "$ADMIN_NAME" = "" ];then export ADMIN_NAME=couchbase;fi
if [ "$ADMIN_PWD" = "" ];then export ADMIN_PWD=couchbase;fi
if [ "$MASTER_NAME" = "" ];then export MASTER_NAME=$HOSTNAME;fi
if [ "$RAM_SIZE" = "" ];then export RAM_SIZE=1024;fi
if [ "$DATA_DIR" = "" ];then export DATA_DIR=/opt/couchbase/var/lib/data;fi
if [ "$IDX_DIR" = "" ];then export IDX_DIR=/opt/couchbase/var/lib/idx;fi
