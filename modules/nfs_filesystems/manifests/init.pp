##simple service to mount NFS volumes onto the nodes

class nfs_filesystems {
## create a mount target on all devices for the nfs mount
  file { '/mnt/nfs':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
## mount nfs mount off Storage-0, this will populate fstab
  mount { '/mnt/nfs':
    ensure  => 'mounted',
    device  => 'Storage-0:/mnt/share',
    fstype  => 'nfs',
    options => 'defaults,noauto',
    atboot  => true,
  }
}
