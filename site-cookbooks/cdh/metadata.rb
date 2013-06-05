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

%w{ redhat centos scientific amazon oracle}.each do |os|
  supports os
end
