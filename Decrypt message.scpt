FasdUAS 1.101.10   ��   ��    k             l      ��  ��   [U
	Script that handles decrypting messages found inside dropbox.
	
	Requires
	- Keybase command line tools installed
	
	Install Instructions
	- Update pathToScript to whereever the decryptMessages.py script is
	- Update pathToSaveMessages to wherever you want to save messages
	- run sudo ln -s PATH_TO_THIS_SCRIPT /Library/Scripts/Folder\ Action\ Scripts/Decrypt\ message.scpt
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
 	 -   U p d a t e   p a t h T o S c r i p t   t o   w h e r e e v e r   t h e   d e c r y p t M e s s a g e s . p y   s c r i p t   i s 
 	 -   U p d a t e   p a t h T o S a v e M e s s a g e s   t o   w h e r e v e r   y o u   w a n t   t o   s a v e   m e s s a g e s 
 	 -   r u n   s u d o   l n   - s   P A T H _ T O _ T H I S _ S C R I P T   / L i b r a r y / S c r i p t s / F o l d e r \   A c t i o n \   S c r i p t s / D e c r y p t \   m e s s a g e . s c p t 
 	 -   G o   t o   D r o p b o x   - >   K e y b a s e   - >   R i g h t   c l i c k   t h e   f o l d e r   w i t h   y o u r   k e y b a s e   I D   - >   S e r v i c e s   - >   F o l d e r   A c t i o n s   S e t u p 
 	 -   I f   y o u   p u t   t h e   f i l e   i n   t h e   r i g h t   p l a c e   y o u   s h o u l d   s e e   t h e   D e c r y p t   m e s s a g e   s c r i p t . 	 
 	 -   S h a r e   t h a t   f o l d e r   w i t h   y o u r   f r i e n d s .   T h e n   w h e n   t h e y   d r o p   m e s s a g e s   i n t o   t h a t   f o l d e r   t h i s   s c r i p t   w i l l   d e c r y p t   t h e   m e s s a g e s   f o r   y o u . 
 	 
 	 T o   e a s i l y   s e n d   m e s s a g e s   t o   y o u r   f r i e n d s   c h e c k o u t   s p y c h a t . p y .   T h a t   s c r i p t   w i l l   d r o p   e n c r y t e d   m e s s a g e s   i n t o   D r o p b o x   f o r   y o u r   f r i e n d s   t o   c o n s u m e . 
   
  
 l     ��������  ��  ��        i         I     ��  
�� .facofgetnull���     alis  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    k     /       r         m        �   n / U s e r s / k s i v a r a n / S i t e s / K e y b a s e S c r i p t s / d e c r y p t M e s s a g e s . p y  o      ���� 0 pathtoscript pathToScript      r        m       �    ~ / D e c r y p t e d  o      ���� (0 pathtosavemessages pathToSaveMessages     !   l   ��������  ��  ��   !  " # " r     $ % $ n     & ' & 1   	 ��
�� 
psxp ' o    	���� 0 this_folder   % o      ���� 0 pathtomessage pathToMessage #  ( ) ( l    *���� * I   �� +��
�� .sysoexecTEXT���     TEXT + b     , - , b     . / . b     0 1 0 b     2 3 2 b     4 5 4 m     6 6 � 7 7 X e v a l   $ ( / u s r / l i b e x e c / p a t h _ h e l p e r   - s ) ;   p y t h o n   5 o    ���� 0 pathtoscript pathToScript 3 m     8 8 � 9 9    1 o    ���� 0 pathtomessage pathToMessage / m     : : � ; ;    - o    ���� (0 pathtosavemessages pathToSaveMessages��  ��  ��   )  < = < l   ��������  ��  ��   =  > ? > r    ! @ A @ m     B B � C C  N e w   A o      ���� "0 notificaitonmsg notificaitonMsg ?  D E D I  " )�� F G
�� .sysonotfnull��� ��� TEXT F o   " #���� "0 notificaitonmsg notificaitonMsg G �� H��
�� 
appr H m   $ % I I � J J  S e c r e t   M e s s a g e��   E  K�� K I  * /�� L��
�� .sysodelanull��� ��� nmbr L m   * +���� 
��  ��     M�� M l     ��������  ��  ��  ��       �� N O��   N ��
�� .facofgetnull���     alis O �� ���� P Q��
�� .facofgetnull���     alis�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��   P �������������� 0 this_folder  �� 0 added_items  �� 0 pathtoscript pathToScript�� (0 pathtosavemessages pathToSaveMessages�� 0 pathtomessage pathToMessage�� "0 notificaitonmsg notificaitonMsg Q   �� 6 8 :�� B�� I������
�� 
psxp
�� .sysoexecTEXT���     TEXT
�� 
appr
�� .sysonotfnull��� ��� TEXT�� 

�� .sysodelanull��� ��� nmbr�� 0�E�O�E�O��,E�O�%�%�%�%�%j O�E�O���l 
O�j ascr  ��ޭ