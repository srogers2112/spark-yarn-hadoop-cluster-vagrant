#!/bin/bash

#java
JAVA_ARCHIVE=jdk-8u144-linux-x64.tar.gz
#JAVA_ARCHIVE=jdk-8u25-linux-i586.tar.gz
#hadoop
HADOOP_PREFIX=/usr/local/hadoop
HADOOP_CONF=$HADOOP_PREFIX/etc/hadoop
HADOOP_VERSION=hadoop-2.6.5
HADOOP_ARCHIVE=$HADOOP_VERSION.tar.gz
HADOOP_MIRROR_DOWNLOAD=http://www.namesdir.com/mirrors/apache/hadoop/common/hadoop-2.6.5/hadoop-2.6.5.tar.gz
HADOOP_RES_DIR=/vagrant/resources/hadoop
#spark
SPARK_VERSION=spark-2.2.0
SPARK_ARCHIVE=$SPARK_VERSION-bin-hadoop2.6.tgz
SPARK_ARCHIVE_DIR=$SPARK_VERSION-bin-hadoop2.6
# SPARK_MIRROR_DOWNLOAD=../resources/spark-1.6.1-bin-hadoop2.6.tgz
SPARK_MIRROR_DOWNLOAD=https://archive.apache.org/dist/spark/spark-2.2.0/spark-2.2.0-bin-hadoop2.6.tgz
SPARK_RES_DIR=/vagrant/resources/spark
SPARK_CONF_DIR=/usr/local/spark/conf

#hive
HIVE_VERSION=hive-1.2.1
HIVE_PREFIX=/usr/local/hive
HIVE_ARCHIVE=apache-hive-1.2.1-bin.tar.gz
HIVE_ARCHIVE_DIR=apache-hive-1.2.1-bin
HIVE_MIRROR_DOWNLOAD=../resources/apache-hive-1.2.1-bin.tar.gz
HIVE_RES_DIR=/vagrant/resources/hive
#ssh
SSH_RES_DIR=/vagrant/resources/ssh
RES_SSH_COPYID_ORIGINAL=$SSH_RES_DIR/ssh-copy-id.original
RES_SSH_COPYID_MODIFIED=$SSH_RES_DIR/ssh-copy-id.modified
RES_SSH_CONFIG=$SSH_RES_DIR/config

function resourceExists {
	FILE=/vagrant/resources/$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}

function fileExists {
	FILE=$1
	if [ -e $FILE ]
	then
		return 0
	else
		return 1
	fi
}

#echo "common loaded"
