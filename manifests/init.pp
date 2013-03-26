define tuned::tune() {

  case $operatingsystem {
    default: { $package = 'tuned' }
  }

  package { "$package":
   ensure => installed,
  }

  service { 'tuned':
    ensure => running,
    require => Package[$package],
  }

  tuned { $name:
    ensure => present,
    require => Service[$package],
  }
}
