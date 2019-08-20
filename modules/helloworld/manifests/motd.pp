## puppet official demo class creating a MOTD file instead of WALL.
 class helloworld::motd {
   file { '/etc/motd':
   owner   => 'root',
   group   => 'root',
   mode    => '0644',
   content => "hello, world!\n",
   }
 }
