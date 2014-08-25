FasdUAS 1.101.10   ��   ��    k             l      ��  ��   nh
	Script that handles decrypting messages found inside dropbox.
	
	Requires
	- Keybase command line tools installed
	
	Install Instructions
	- Update passphrase to your passphrase
	- Update pathToDecryptedMessages to whereever you want to put decrypted messages
	- Put this file in /Library/Scripts/Folder Action Scripts/ (I created a soft link so that I could easily modify the file if need be)
	- Go to Dropbox -> Keybase -> Right click the folder with your keybase ID -> Services -> Folder Actions Setup
	- If you put the file in the right place you should see the Decrypt message script.	
	- Share that folder with your friends. Then when they drop messages into that folder this script will decrypt the messages for you.
	
	To easily send messages to your friends checkout spychat.py. That script will drop encryted messages into Dropbox for your friends to consume.
     � 	 	� 
 	 S c r i p t   t h a t   h a n d l e s   d e c r y p t i n g   m e s s a g e s   f o u n d   i n s i d e   d r o p b o x . 
 	 
 	 R e q u i r e s 
 	 -   K e y b a s e   c o m m a n d   l i n e   t o o l s   i n s t a l l e d 
 	 
 	 I n s t a l l   I n s t r u c t i o n s 
 	 -   U p d a t e   p a s s p h r a s e   t o   y o u r   p a s s p h r a s e 
 	 -   U p d a t e   p a t h T o D e c r y p t e d M e s s a g e s   t o   w h e r e e v e r   y o u   w a n t   t o   p u t   d e c r y p t e d   m e s s a g e s 
 	 -   P u t   t h i s   f i l e   i n   / L i b r a r y / S c r i p t s / F o l d e r   A c t i o n   S c r i p t s /   ( I   c r e a t e d   a   s o f t   l i n k   s o   t h a t   I   c o u l d   e a s i l y   m o d i f y   t h e   f i l e   i f   n e e d   b e ) 
 	 -   G o   t o   D r o p b o x   - >   K e y b a s e   - >   R i g h t   c l i c k   t h e   f o l d e r   w i t h   y o u r   k e y b a s e   I D   - >   S e r v i c e s   - >   F o l d e r   A c t i o n s   S e t u p 
 	 -   I f   y o u   p u t   t h e   f i l e   i n   t h e   r i g h t   p l a c e   y o u   s h o u l d   s e e   t h e   D e c r y p t   m e s s a g e   s c r i p t . 	 
 	 -   S h a r e   t h a t   f o l d e r   w i t h   y o u r   f r i e n d s .   T h e n   w h e n   t h e y   d r o p   m e s s a g e s   i n t o   t h a t   f o l d e r   t h i s   s c r i p t   w i l l   d e c r y p t   t h e   m e s s a g e s   f o r   y o u . 
 	 
 	 T o   e a s i l y   s e n d   m e s s a g e s   t o   y o u r   f r i e n d s   c h e c k o u t   s p y c h a t . p y .   T h a t   s c r i p t   w i l l   d r o p   e n c r y t e d   m e s s a g e s   i n t o   D r o p b o x   f o r   y o u r   f r i e n d s   t o   c o n s u m e . 
   
�� 
 i         I     ��  
�� .facofgetnull���     alis  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    k     �       r         m        �    ~ / D e c r y p t e d /  o      ���� 20 pathtodecryptedmessages pathToDecryptedMessages      r        m       �      o      ���� 0 
passphrase        r         n     ! " ! 1   	 ��
�� 
psxp " o    	���� 0 this_folder     o      ���� 0 pathtomessage pathToMessage   # $ # r     % & % b     ' ( ' b     ) * ) b     + , + m     - - � . . ` e v a l   $ ( / u s r / l i b e x e c / p a t h _ h e l p e r   - s ) ;   k e y b a s e   - p   , o    ���� 0 
passphrase   * m     / / � 0 0 $   d e c r y p t   - - o u t p u t   ( o    ���� 20 pathtodecryptedmessages pathToDecryptedMessages & o      ���� 20 commandtodecryptmessage commandToDecryptMessage $  1 2 1 l   ��������  ��  ��   2  3 4 3 l   �� 5 6��   5   Get items in folder    6 � 7 7 (   G e t   i t e m s   i n   f o l d e r 4  8 9 8 r    ! : ; : l    <���� < I   �� =��
�� .sysoexecTEXT���     TEXT = b     > ? > m     @ @ � A A  l s   ? o    ���� 0 pathtomessage pathToMessage��  ��  ��   ; o      ���� 0 
listoutput 
listOutput 9  B C B l  " "��������  ��  ��   C  D E D l  " "�� F G��   F j d  save the current TID in oldtid and set the TID to return (the char we want to break the string at)    G � H H �     s a v e   t h e   c u r r e n t   T I D   i n   o l d t i d   a n d   s e t   t h e   T I D   t o   r e t u r n   ( t h e   c h a r   w e   w a n t   t o   b r e a k   t h e   s t r i n g   a t ) E  I J I r   " 9 K L K J   " ( M M  N O N n  " % P Q P 1   # %��
�� 
txdl Q 1   " #��
�� 
ascr O  R�� R o   % &��
�� 
ret ��   L J       S S  T U T o      ���� 
0 oldtid   U  V�� V n      W X W 1   5 7��
�� 
txdl X 1   4 5��
�� 
ascr��   J  Y Z Y l  : :��������  ��  ��   Z  [ \ [ r   : ? ] ^ ] n   : = _ ` _ 2   ; =��
�� 
citm ` o   : ;���� 0 
listoutput 
listOutput ^ o      ���� "0 listoffilenames listOfFilenames \  a b a l  @ @��������  ��  ��   b  c d c l  @ @�� e f��   e s m Now set the TID back to want it was. Just a good pratice to get into so you don;t mess yourself up later on.    f � g g �   N o w   s e t   t h e   T I D   b a c k   t o   w a n t   i t   w a s .   J u s t   a   g o o d   p r a t i c e   t o   g e t   i n t o   s o   y o u   d o n ; t   m e s s   y o u r s e l f   u p   l a t e r   o n . d  h i h r   @ E j k j o   @ A���� 
0 oldtid   k n      l m l 1   B D��
�� 
txdl m 1   A B��
�� 
ascr i  n o n l  F F��������  ��  ��   o  p q p X   F z r�� s r k   V u t t  u v u r   V a w x w b   V _ y z y b   V ] { | { b   V [ } ~ } b   V Y  �  o   V W���� 20 commandtodecryptmessage commandToDecryptMessage � o   W X���� 0 filename   ~ m   Y Z � � � � �    | o   [ \���� 0 pathtomessage pathToMessage z o   ] ^���� 0 filename   x o      ����  0 decryptcommand decryptCommand v  � � � r   b i � � � b   b g � � � b   b e � � � m   b c � � � � �  r m   � o   c d���� 0 pathtomessage pathToMessage � o   e f���� 0 filename   � o      ���� 0 
removefile 
removeFile �  � � � I  j o�� ���
�� .sysoexecTEXT���     TEXT � o   j k����  0 decryptcommand decryptCommand��   �  ��� � I  p u�� ���
�� .sysoexecTEXT���     TEXT � o   p q���� 0 
removefile 
removeFile��  ��  �� 0 filename   s o   I J���� "0 listoffilenames listOfFilenames q  � � � l  { {��������  ��  ��   �  � � � O   { � � � � k   � � � �  � � � l  � ��� � ���   �   get the name of the folder    � � � � 4 g e t   t h e   n a m e   o f   t h e   f o l d e r �  ��� � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 this_folder  ��  ��   � l      ����� � o      ���� 0 folder_name  ��  ��  ��   � m   { ~ � ��                                                                                  MACS  alis    t  Macintosh HD               �>��H+     '
Finder.app                                                      &����        ����  	                CoreServices    �?eX      ��\       '   $   #  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � r   � � � � � b   � � � � � m   � � � � � � � " N e w   m e s s a g e   f r o m   � o   � ����� 0 folder_name   � o      ���� "0 notificaitonmsg notificaitonMsg �  � � � I  � ��� � �
�� .sysonotfnull��� ��� TEXT � o   � ����� "0 notificaitonmsg notificaitonMsg � �� ���
�� 
appr � m   � � � � � � �  S e c r e t   M e s s a g e��   �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� 
��  ��  ��       �� � ���   � ��
�� .facofgetnull���     alis � �� ���� � ���
�� .facofgetnull���     alis�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��   � ������������������������������ 0 this_folder  �� 0 added_items  �� 20 pathtodecryptedmessages pathToDecryptedMessages�� 0 
passphrase  �� 0 pathtomessage pathToMessage�� 20 commandtodecryptmessage commandToDecryptMessage�� 0 
listoutput 
listOutput�� 
0 oldtid  �� "0 listoffilenames listOfFilenames�� 0 filename  ��  0 decryptcommand decryptCommand�� 0 
removefile 
removeFile�� 0 folder_name  �� "0 notificaitonmsg notificaitonMsg �   �� - / @���������������� � � ��� ��� �����~
�� 
psxp
�� .sysoexecTEXT���     TEXT
�� 
ascr
�� 
txdl
�� 
ret 
�� 
cobj
�� 
citm
�� 
kocl
�� .corecnte****       ****
�� 
pnam
�� 
appr
�� .sysonotfnull��� ��� TEXT� 

�~ .sysodelanull��� ��� nmbr�� ��E�O�E�O��,E�O�%�%�%E�O�%j E�O��,�lvE[�k/E�Z[�l/��,FZO��-E�O���,FO 3�[��l kh 	��%�%�%�%E�O�%�%E�O�j O�j [OY��Oa  	�a ,E�UOa �%E�O�a a l Oa j  ascr  ��ޭ