%w{pig pig-udf-datafu}.each do |y|
  yum_package y do
    action :install
  end
end