# Using Puppet, install 2.1.0 flask  from pip3.

# Ensure pip3 is install
package { 'python3-pip':
  ensure => installed,
}

# Install Flask using pip3
exec { 'install_flask':
  command => 'pip3 install Flask==2.1.0',
  path    => ['/usr/bin', '/usr/local/bin'],
  creates => '/usr/local/lib/python3.x/dist-packages/Flask',
}

# Apply the class to install Flask
include install_flask
