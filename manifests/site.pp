# Main Puppet File


# node here maps to 'hostname'

## only compute nodes will get the test class.
node 'Compute-0', 'Compute-1' {

        class { 'test':}
        class { 'nfs_filesystems': }
        class { 'nfs_filesystems::workers': }
        class { 'lciusers':}

}


## If the nodes do not fall into any other catagory they will get the helloworld
node default {
  class { 'helloworld': }
  class { 'helloworld::motd': }
  class { 'nfs_filesystems': }
  class { 'lciusers':}
}
