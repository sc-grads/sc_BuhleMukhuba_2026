buhle_mukhuba@Sambe2025003:~$ cat text2.txt
My name is Buhle
This is a line
This is another line
This is the next line
What about this one?
And another one
What do you think is next?
Yes, another line
This is filler text
More filler text
Is this the last line?
No, it's not
Just kidding
Okay, This is the last line
I got you again
This is the final line
buhle_mukhuba@Sambe2025003:~$ grep Buhle text2.txt
My name is Buhle
buhle_mukhuba@Sambe2025003:~$ grep line text2.txt
This is a line
This is another line
This is the next line
Yes, another line
Is this the last line?
Okay, This is the last line
This is the final line
buhle_mukhuba@Sambe2025003:~$ grep o text2.txt
This is another line
What about this one?
And another one
What do you think is next?
Yes, another line
More filler text
No, it's not
I got you again
buhle_mukhuba@Sambe2025003:~$ grep -v o text2.txt
My name is Buhle
This is a line
This is the next line
This is filler text
Is this the last line?
Just kidding
Okay, This is the last line
This is the final line
buhle_mukhuba@Sambe2025003:~$ grep Line text2.txt
buhle_mukhuba@Sambe2025003:~$ grep -i Line
:q
^Z
[1]+  Stopped                 grep --color=auto -i Line
buhle_mukhuba@Sambe2025003:~$ grep -i Line text2.txt
This is a line
This is another line
This is the next line
Yes, another line
Is this the last line?
Okay, This is the last line
This is the final line
buhle_mukhuba@Sambe2025003:~$ grep -ci Line text2.txt
7
buhle_mukhuba@Sambe2025003:~$ grep -ni Line text2.txt
2:This is a line
3:This is another line
4:This is the next line
8:Yes, another line
11:Is this the last line?
14:Okay, This is the last line
16:This is the final line
buhle_mukhuba@Sambe2025003:~$ file text2.txt
text2.txt: ASCII text
buhle_mukhuba@Sambe2025003:~$ strings text2.txt | grep -i line
This is a line
This is another line
This is the next line
Yes, another line
Is this the last line?
Okay, This is the last line
This is the final line
buhle_mukhuba@Sambe2025003:~$ strings text2.txt | grep -i line | head-1
This is a line
buhle_mukhuba@Sambe2025003:~$ strings text2.txt | grep -i line | head-1 | cut -d'' -f2
cut: the delimiter must be a single character
Try 'cut --help' for more information.
buhle_mukhuba@Sambe2025003:~$ strings text2.txt | grep -i line | head-1 | cut -d' ' -f2
is
buhle_mukhuba@Sambe2025003:~$
