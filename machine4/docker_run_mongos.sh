# docker run  --name mongos0 -d --network mongodb_ov_net -p 27017:27017 --entrypoint "mongos" mongo --configdb rs_configsvr/10.0.1.2:27019 --bind_ip_all
docker run --name mongos3  -d --network mongodb_ov_net -p 27017:27017  -v $PWD/../../conf/mongos.conf:/data/configdb/mongos.conf -v $PWD/../../key.file:/data/configdb/key.file -v $PWD/../../log/mg/mongos.log:/data/configdb/log/mongos.log --entrypoint "mongos" mongo --config /data/configdb/mongos.conf

