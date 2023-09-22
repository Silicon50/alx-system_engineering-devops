# Create a Puppet manifest to install Flask version 2.1.0 using pip3

class install_flask {
  # Install Flask from package 
  package { 'flask':
    ensure   => '2.1.0',
    provider => 'pip3',
  }
}

# Apply the class to install Flask
include install_flask
