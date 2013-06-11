#!bats/bin/bats

@test "java is installed" {
  run java -version
  [ "$status" -eq 0 ]
}

@test "hadoop client is installed" {
  run hadoop version
  [ "$status" -eq 0 ]
}

@test "hdfs is installed" {
  run hdfs -version
  [ "$status" -eq 0 ]
}

@test "DataNode is running" {
  run sudo jps | grep DataNode
  [ "$status" -eq 0 ]
}

@test "TaskTracker is running" {
  run sudo jps | grep TaskTracker
  [ "$status" -eq 0 ]
}

@test "SecondaryNameNode is running" {
  run sudo jps | grep SecondaryNameNode
  [ "$status" -eq 0 ]
}

