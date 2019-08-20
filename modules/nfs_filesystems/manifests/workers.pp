## this mounts NFS filesystems only needed on workers

class nfs_filesystems::workers{
  file { '/share/home':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  mount { '/share/home':
    ensure  => 'mounted',
    device  => 'Login:/share/home',
    fstype  => 'nfs',
    options => 'defaults,noauto',
    atboot  => true,
  }
}
