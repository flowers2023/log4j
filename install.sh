#########################################################################
# File Name: install.sh
# Author: DRUNK
# mail: zhangshuangfu@ccssoft.com.cn
# Created Time: Tue 17 Mar 2015 06:31:02 PM PDT
#########################################################################
#!/bin/bash
mvn package -DskipTests

echo "编译完成，开始上传包到私服"
mvn install:install-file -DgroupId=log4j -DartifactId=log4j  -Dversion=1.1 -Dpackaging=jar -Dfile=./target/log4j-1.2.18-SNAPSHOT.jar
