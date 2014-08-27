#!/usr/bin/env python

import argparse
import datetime
import os
import subprocess
import sys
from sys import stdin

user = os.environ['USER']
dbroot = os.path.join(os.path.abspath(os.sep), 'Users', user, 'Dropbox') 

# Leave this alone
messages_root = os.path.join(dbroot, 'Keybase')

parser = argparse.ArgumentParser(description='Send secret messages to fellow spies. Will create a small text file in a dropbox folder for your friends to consume.')
parser.add_argument('target', help='the keybase user to send to')
args = parser.parse_args()

print 'Enter your secret message:'
msg = stdin.readline()
msg = "'" + msg.replace("'", "'\\''") + "'"
message = ''.join(msg)
print message

msg_components = [args.target, datetime.datetime.now().strftime(user + '_%Y-%m-%d_%H%M%S.%f.txt')]

message_path = os.path.join(messages_root, *msg_components)

try:
    os.makedirs(os.path.dirname(message_path))
except OSError:
    pass

subprocess.call('echo %s | keybase encrypt %s -s > %s' % (message, args.target, message_path), shell=True)

print 'Created message.'
