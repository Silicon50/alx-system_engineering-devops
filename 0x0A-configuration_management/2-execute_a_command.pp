# creating a manifest that kills a process killmenow.
exec {
  'pkill -f killmenow':
  path => '/usr/bin/:/usr/local/bin/:/bin/'
}
