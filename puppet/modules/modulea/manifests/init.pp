class modulea {

	$packagelist = ['tar','zip','less','unzip','lsof']

	package { $pachagelist :
		ensure=> 'installed'
		}
	user { 'puppet' :
		ensure=>'present',
		comment=>'user puppet',	
		password=>'puppet'
		}
	group { 'puppet':
		ensure=>'present'
		}
}
