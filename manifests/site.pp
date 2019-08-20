# Main Puppet File

node default {
  class { 'helloworld': }
  class { 'helloworld::motd': }
}

node 'Compute-0', 'Compute-1', 'Storage-0', 'Storage-1', 'Storage-2',
'Storage-3' {

        class { 'test':}
}
