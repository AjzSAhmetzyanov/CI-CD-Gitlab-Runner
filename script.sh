#!/usr/bin/expect -f
spawn ./copy.sh

expect {
        "*fingerprint*" { send -- "yes\r" }
	"*password*" { send -- "1\r" }
}

expect EOF

