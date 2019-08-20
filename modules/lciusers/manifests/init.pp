## a quick demo of hiera lookups and create resource commands.
class lciusers {
## This class is a massively bruteforce demonstration of making users and groups


$userlist = lookup('lciusers::users','')
if userlist != ''{
  create_resources(user,$userlist)
}

$grouplist = lookup('lciusers::groups','')

if grouplist != ''{
  create_resources(group,$grouplist)
}

}
