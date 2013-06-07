# CDH Hadoop Pseudo-cluster

A Vagrant / Chef-solo repo to build a CDH Cloudera Distribution Hadoop pseudo-cluster.  This is designed for use by developers and devops types who want a local cluster to build against

## Installation

Make sure you have a good internet connection and then run:
```
vagrant up
```

You'll now have a running pseudo-cluster with Hadoop tools installed and configured

## Software installed

 * HDFS
 * Map/Reduce
 * Pig
 * Flume
 * Ant
 * Mahout

## Known bugs

 * No Oracle JDK support
 * No hbase
 * No scala
 * Vagrantfile is not using 1.2+ configuration style
 * Packages are downloaded every time we build a new VM
 * (Epic) No support for building actual clusters

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Submit new Pull Request