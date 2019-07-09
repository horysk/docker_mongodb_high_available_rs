#docker run  --name shardsvr00 -d --network mongodb_ov_net  -v $PWD/../../data/sh/shardsvr00:/data/db mongo --shardsvr --replSet "rs_shardsvr0"  --bind_ip_all 
#docker run  --name shardsvr10 -d --network mongodb_ov_net  -v $PWD/../../data/sh/shardsvr10:/data/db mongo --shardsvr --replSet "rs_shardsvr1"  --bind_ip_all 
#docker run  --name shardsvr20 -d --network mongodb_ov_net  -v $PWD/../../data/sh/shardsvr20:/data/db mongo --shardsvr --replSet "rs_shardsvr2"  --bind_ip_all 


docker run --name shardsvr30 -d --network mongodb_ov_net -v $PWD/../../conf/mongod_shard3.conf:/data/db/mongod.conf -v $PWD/../../key.file:/data/db/key.file -v $PWD/../../log/sh/shardsvr30/shards.log:/data/db/log/shards.log -v $PWD/../../data/sh/shardsvr30:/data/db mongo  --config /data/db/mongod.conf
docker run --name shardsvr40 -d --network mongodb_ov_net -v $PWD/../../conf/mongod_shard4.conf:/data/db/mongod.conf -v $PWD/../../key.file:/data/db/key.file -v $PWD/../../log/sh/shardsvr40/shards.log:/data/db/log/shards.log -v $PWD/../../data/sh/shardsvr40:/data/db mongo  --config /data/db/mongod.conf


