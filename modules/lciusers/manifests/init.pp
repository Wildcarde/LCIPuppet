## a quick demo of hiera lookups and create resource commands.
class lciusers {
## This class is a massively bruteforce demonstration of making users and groups


$userlist = lookup('lciusers::users',{merge => hash})
create_resources(user,$lciusers::userlist)

$grouplist = lookup('lciusers::groups',{merge => hash})

create_resources(group,$lciusers::grouplist)


}
