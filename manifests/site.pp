# Main Puppet File

node 'Compute-0', 'Compute-1', 'Storage-0', 'Storage-1', 'Storage-2',
'Storage-3' {

        include test
}