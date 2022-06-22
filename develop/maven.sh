#!/bin/bash
# instalación de kafka


java_version="java-1.8.0-openjdk"
export JAVA_HOME="/usr/lib/jvm/jre"${java_version}
gradle_repo=https://www-eu.apache.org/dist/maven/maven-3/3.6.0/binaries/
gradle_file=apache-maven-3.6.0-bin.tar.gz


`sudo yum -y update`
`yum -y install ${JAVA_VERSION}`          #instalar versión de java

`echo ${JAVA_HOME}>>/etc/profile`

`wget ${gradle_repo}${gradle_file}`
`tar xvf ${gradle_file} -C /usr/lib/`

`echo "M2_HOME="/usr/lib/apache-maven-3.6.0"" >>  /etc/profile`
`echo export M2_HOME >>  /etc/profile`
`echo M2="$M2_HOME/bin" >> /etc/profile`
`echo MAVEN_OPTS="-Xms256m -Xmx512m" >> /etc/profile`
`echo export M2 MAVEN_OPTS >> /etc/profile`
`echo PATH=$M2:$PATH >> /etc/profile`
`echo export PATH >> /etc/profile`
`. /etc/profile`
`env | grep M2`
`mvn -version`