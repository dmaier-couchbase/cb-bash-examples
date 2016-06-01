function export_arg {

  if env | grep -q "^$1="
  then
	echo "Variable $1 is already set"
  else
	echo "Setting variable $1 to $2"
	export $1=$2
   
  fi
}

function main {

  export_arg ADMIN_NAME couchbase
  export_arg ADMIN_PWD couchbase
  export_arg MASTER_NAME $HOSTNAME
  export_arg RAM_SIZE 1024
  export_arg DATA_DIR /opt/couchbase/var/lib/data
  export_arg IDX_DIR /opt/couchbase/var/lib/idx
}

main

