KeybaseScripts
==============

Repo for various scripts I am making to interact with Keybase.io

####spychat.py
This script handles sending messages to people. To use you simply run
```
python spychat.py nameOfPersonYouAreSendingTo
```
You will be prompted to enter in a message. This message will be encrypted and stored in ```/Users/YourUserName/Dropbox/Keybase/nameOfPersonYouAreSendingTo/user_date.txt```


####Decrypt message.scpt
This applescript handles decrypting message automatically for you and cleaning up files in your dropbox folder. To use do the following
* Open properties.plist in a text editor
* Fill in the values and save the file.
* Open terminal
* run ```sudo ln -s PATH_TO_THIS_SCRIPT/Decrypt\ message.scpt /Library/Scripts/Folder\ Action\ Scripts/Decrypt\ message.scpt```
* Go to ```~/Dropbox```
* Make a folder called Keybase.
* Make another folder inside Keybase with your username.
* Right click the folder with your keybase username -> Services -> Folder Actions Setup
* Choose Decrypt message from the options

Now you can share this folder with people who you want to receive messages from. spychat.py will drop messages into your newly created folder and the applescript will handle decrypting and cleaning up these files.
