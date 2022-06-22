#!/bin/bash
# instalación de kafka


java_version="java-1.8.0-openjdk"
export java_home="/usr/lib/jvm/jre"

`sudo yum -y update`
`yum -y install ${JAVA_VERSION}`          #instalar versión de java
