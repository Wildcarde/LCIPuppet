class users {

file { '/etc/passwd':
  ensure => 'file',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  links  => 'follow',
  source => 'puppet:///modules/users/passwd',
}

file { '/etc/shadow':
  ensure => 'file',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  links  => 'follow',
  source => 'puppet:///modules/users/shadow',
}

file { '/etc/group':
  ensure => 'file',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  links  => 'follow',
  source => 'puppet:///modules/users/group',
}

}
