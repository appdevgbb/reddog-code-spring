# create az backing services, mentioned in README pre-reqs
# set the following env variables after above step, and replace <> placeholders
export KAFKA_BOOTSTRAP_SERVERS=ehreddog2655briar.servicebus.windows.net:9093
export KAFKA_SECURITY_PROTOCOL=SASL_SSL
export KAFKA_SASL_MECHANISM=PLAIN
export KAFKA_SASL_JAAS_CONFIG='org.apache.kafka.common.security.plain.PlainLoginModule required username="$ConnectionString" password="Endpoint=sb://ehreddog2655briar.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=nfH5o6bgfipFK6lzF1SWcYuV4l/gDmmZ56osE5fFx2w=";'
export MYSQL_URL=jdbc:mysql://sqlreddog2655briar.mysql.database.azure.com/reddog
export MYSQL_USER=reddog
export MYSQL_PASSWORD='w@lkingth3d0g'
export AZURE_REDIS_HOST=redisreddog2655briar.redis.cache.windows.net
export AZURE_REDIS_PORT=6380
export AZURE_REDIS_ACCESS_KEY=gUL7hvgEL9vKuwHwspjCNu7x4C65Yq7zCAzCaPrImg4=
export AZURE_COSMOSDB_URI=https://reddog2655briar.documents.azure.com:443/
export AZURE_COSMOSDB_KEY=P32IYCkAEzoVOxY2V8s2obrOOHdzkfvotQMSRMFnJrhMfm9uiRKn2fkAzzmhjlV6DfuBNDfQFddDPNMD5N1vgw==
export AZURE_COSMOSDB_SECONDARY_KEY=LaY8t2sXX6qnyAeneNr6NxhYVK2LDUd9KF23iucO5SN4cisvOups9dFPXt5NVa5yGvmVh52GXcyqk5YCmHk8AQ==
export AZURE_COSMOSDB_DATABASE_NAME=reddog
export AZURE_STORAGE_ACCOUNT_NAME=reddog2655briar
export AZURE_STORAGE_ACCOUNT_KEY=yyI8Az55+z+oG/d2lsz6k1ZdhAMJTf8t9+2n2B+8ojuC/3r7SSHK3Wvt8kQyLs0T3w7m6w2wrCJl+AStfkfBPw==
export AZURE_STORAGE_ENDPOINT=https://reddog2655briar.blob.core.windows.net

# builds and runs the services in parallel - requires gnu-parallel
# find . -name "pom.xml" | parallel nohup mvn spring-boot:run -f