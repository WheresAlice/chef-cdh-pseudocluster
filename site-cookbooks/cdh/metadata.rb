maintainer	"Alice Kaerast"
maintainer_email	"alice.kaerast@bskyb.com"
license	"Apache 2.0"
description	"Installs and configures Cloudera tools from repo"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version "0.0.1"
name "cdh"
depends "yum"

recipe "cdh::yumrepo", "Adds the CDH yum repo"
recipe "cdh::pseudo", "Installs a pseudo-cluster"
recipe "cdh::pig", "Installs Pig - a platform for analyzing large data sets"
recipe "cdh::flume", "Installs Flume - a reliable, scalable, and manageable distributed log collection application for collecting data such as logs and delivering it to data stores such as Hadoop's HDFS."
recipe "cdh::ant", "Installs ant - a platform-independent build tool for java"
recipe "cdh::mahout", "A set of Java libraries for scalable machine learning."

%w{ redhat centos scientific amazon oracle}.each do |os|
  supports os
end
