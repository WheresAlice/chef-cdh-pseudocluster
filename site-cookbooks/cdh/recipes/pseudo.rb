# Installs a pseudo-cluster

yum_package "hadoop-0.20-conf-pseudo" do
  action :install
end

bash "format" do
  not_if { ::File.exist?('/var/lib/hadoop-hdfs/cache/hdfs/dfs/name/') }
  user "hdfs"
  code <<-EOH
  hdfs namenode -format
  EOH
end

%w{hadoop-hdfs-datanode hadoop-hdfs-namenode hadoop-hdfs-secondarynamenode}.each do |s|
  service s do
    action :start
  end
end

bash "hdfs setup" do
  user "hdfs"
  not_if { ::File.exist?('/var/lib/hadoop-hdfs/.hdfs_setup') }
  code <<-EOH
  hadoop fs -mkdir /tmp
  hadoop fs -chmod -R 1777 /
  hadoop fs -mkdir /var/lib/hadoop-hdfs/cache/mapred/mapred/staging
  hadoop fs -chmod 1777 /var/lib/hadoop-hdfs/cache/mapred/mapred/staging
  hadoop fs -chown -R mapred /var/lib/hadoop-hdfs/cache/mapred
  hadoop fs -mkdir /user/vagrant
  hadoop fs -chown vagrant /user/vagrant
  touch /var/lib/hadoop-hdfs/.hdfs_setup
  EOH
end

%w{hadoop-0.20-mapreduce-jobtracker hadoop-0.20-mapreduce-tasktracker}.each do |s|
  service s do
    action :start
  end
end

service "iptables" do
  action :stop
end