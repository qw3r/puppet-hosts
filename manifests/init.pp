class hosts {
	file { "/etc/hosts":
		owner   => root,
		group   => root,
		mode    => 0644,
		content => template("hosts/${::lsbdistcodename}/etc/hosts.erb"),
	}
}

# vim: tabstop=3