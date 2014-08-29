#!/usr/bin/env python

import argparse
import datetime
import os
import subprocess
import sys
import syslog
from sys import stdin
from os import listdir
from os.path import isfile, join

# Set this to your homedir. For some reason os.environ['USER'] didn't seem to work. Not sure why yet.
homedir='/Users/ksivaran/'

syslog.openlog("DecryptMessagesLog")
syslog.syslog(syslog.LOG_ALERT, "Started Script")

parser = argparse.ArgumentParser(description='Decrypts messages found in a single folder')
parser.add_argument('folder', help='the folder with encrypted messages')
parser.add_argument('decryptFolder', help='the folder store decrypted messages in')
args = parser.parse_args()

for f in listdir(args.folder):
	filePath = join(args.folder,f)
	if isfile(filePath) and f.endswith('.txt'):
		decryptCommand = 'keybase --homedir %s decrypt %s' % (homedir, filePath)
		syslog.syslog(syslog.LOG_ALERT, decryptCommand)
		subprocess.call('%s > %s ' % (decryptCommand, join(args.decryptFolder, f)), shell=True)
		syslog.syslog(syslog.LOG_ALERT, "Decrypted message. Trying to delete")
		os.remove(filePath)

print 'Decrypted messages'
