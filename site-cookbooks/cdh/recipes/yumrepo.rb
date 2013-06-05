cookbook_file "/root/cdh.key" do
  action :create
end

yum_key "RPM-GPG-KEY-CDH" do
  url "http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera"
  action :add
end

yum_repository "cdh" do
  description "Cloudera Hadoop packages"
  key "RPM-GPG-KEY-CDH"
  url "http://archive.cloudera.com/cdh4/redhat/6/$basearch/cdh/4/"
  mirrorlist false
  action :add
end
