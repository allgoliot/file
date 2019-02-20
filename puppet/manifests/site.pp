import 'fichier.pp'
#import 'utilisateur.pp'
#include modulea

node 'slave.test.com.com'{
	package{ 'sudo':
		ensure=>'installed'
		}
	user { 'toto' :
		ensure=>'present',
		comment=>'mon premier user',
		password=>'monpass'
		}
}
node 'slave2.test.com'{
	package{ ['wget','sudo']: 
		ensure=>'installed'
		}
	group { 'tutu':
		ensure=>'present'
	}
}
