# Couchbase CLI bash examples

## Initialize a cluster

It's possible to override the default values for the cluster initialization by setting environment variables. The defaults can be found in the file 'default_args.bash'. Here an example to override name of the first node of the cluster:

```
export MASTER_NAME=192.168.7.141

./init_cluster.bash 
Setting variable ADMIN_NAME to couchbase
Setting variable ADMIN_PWD to couchbase
Variable MASTER_NAME is already set
Setting variable NODE_NAME to ubuntu-cb-node
Setting variable RAM_SIZE to 1024
Setting variable DATA_DIR to /opt/couchbase/var/lib/data
Setting variable IDX_DIR to /opt/couchbase/var/lib/idx
Initializing the node ...
SUCCESS: set hostname for 192.168.7.141
Initializing the cluster ...
SUCCESS: init/edit 192.168.7.141
```
