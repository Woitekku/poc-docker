#!/usr/bin/env python3

import sys, base64, os, datetime, time, crypt

if __name__ == "__main__":
	cleartext = sys.argv[1]
	salt = '$6$' + base64.b64encode(os.urandom(8)).decode('ascii') + '$'
	today = datetime.date(int(time.strftime("%Y")), int(time.strftime("%m")), int(time.strftime("%d")))
	print(crypt.crypt(cleartext, salt))
