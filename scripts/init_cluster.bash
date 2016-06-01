#!/bin/bash
export CB_BIN=/opt/couchbase/bin/couchbase-cli

function process_args {

	source $PWD/default_args.bash 

	echo "Using the following arguments: "
	echo " ADMIN_NAME=$ADMIN_NAME"
	echo " ADMIN_PWD=$ADMIN_PWD"
	echo " MASTER_NAME=$MASTER_NAME"
	echo " RAM_SIZE=$RAM_SIZE"
	echo " DATA_DIR=$DATA_DIR"
	echo " IDX_DIR=$IDX_DIR"
}

function usage {
	echo "Use: $0 {ADMIN_NAME} {ADMIN_PWD} {MASTER_NAME} {RAM_SIZE}"
}


function main {

	if [ "$ADMIN_NAME" = "" -o "$ADMIN_PWD" = "" -o "$MASTER_NAME" = "" -o "$RAM_SIZE" = "" ]
	then
		usage
  	else

		echo "Creating index and data directory ..."
		mkdir -p $DATA_DIR
		mkdir -p $IDX_DIR		

		echo "Initializing the node ..."
                $CB_BIN node-init -c $MASTER_NAME:8091 -u $ADMIN_NAME -p $ADMIN_PWD\
                        --node-init-data-path=$DATA_DIR\
                        --node-init-index-path=$IDX_DIR\
                        --node-init-hostname=$MASTER_NAME

		echo "Initializing the cluster ..."
		$CB_BIN cluster-init -c $MASTER_NAME:8091\
			--cluster-init-username=$ADMIN_NAME\
			--cluster-init-password=$ADMIN_PWD\
	 	        --cluster-init-ramsize=$RAM_SIZE\
			--cluster-init-port=8091
	fi
}

process_args
main
