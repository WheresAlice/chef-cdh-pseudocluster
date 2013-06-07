%w{flume-ng flume-ng-agent flume-ng-doc}.each do |y|
  yum_package y do
    action :install
  end
end