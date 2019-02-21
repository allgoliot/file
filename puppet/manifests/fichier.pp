file { '/etc/site-conf' :
	ensure=>'directory',
	owner=>'root',
	group=>'root',
	mode=>0770	
	}
$dirs  = [ '/etc/site-conf/dev', 
	'/etc/site-conf/prod',
	'/etc/site-conf/test' ]

file { $dirs : 
	ensure=> 'directory'
	}

tidy { '/etc/site-conf/test':
	rmdirs=>true}
