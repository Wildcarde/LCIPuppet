## a quick demo of hiera lookups and create resource commands.
class lciusers {
## This class is a massively bruteforce demonstration of making users and groups

$defaults= {
  'ensure' => present,
}
userlist = lookup('lciusers::users','')
if userlist != ''{
  create_resources(user,$lciusers::userlist,$lciusers::defaults)
}

grouplist = lookup('lciusers:groups','')

if grouplist != ''{
  create_resources(group,$lciusers::grouplist,$lciusers::defaults)
}

}
