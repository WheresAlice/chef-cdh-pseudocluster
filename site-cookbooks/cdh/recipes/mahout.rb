%w{mahout mahout-doc}.each do |y|
  yum_package y do
    action :install
  end
end