buhle_mukhuba@Sambe2025003:~$ cp text.txt text2.txt
buhle_mukhuba@Sambe2025003:~$ mkdir text_dir
buhle_mukhuba@Sambe2025003:~$ cp text.txt text2.txt text_dir/
buhle_mukhuba@Sambe2025003:~$ ls text_dir/
text.txt  text2.txt
buhle_mukhuba@Sambe2025003:~$ cp -i text.txt text.txt
cp: 'text.txt' and 'text.txt' are the same file
buhle_mukhuba@Sambe2025003:~$ cp -i text.txt text2.txt
cp: overwrite 'text2.txt'? n
buhle_mukhuba@Sambe2025003:~$ cp -r text_dir text_dir2
buhle_mukhuba@Sambe2025003:~$ ls text_dir2
text.txt  text2.txt
buhle_mukhuba@Sambe2025003:~$ mkdir text_dir3
buhle_mukhuba@Sambe2025003:~$ cp -r text_dir text_dir2 text_dir3
buhle_mukhuba@Sambe2025003:~$ ls text_dir3
text_dir  text_dir2
buhle_mukhuba@Sambe2025003:~$ tree text_dir3
text_dir3
├── text_dir
│   ├── text.txt
│   └── text2.txt
└── text_dir2
    ├── text.txt
    └── text2.txt

3 directories, 4 files
buhle_mukhuba@Sambe2025003:~$ ls
snap  text.txt  text2.txt  text_dir  text_dir2  text_dir3
buhle_mukhuba@Sambe2025003:~$ mv text_dir firstdir
buhle_mukhuba@Sambe2025003:~$ ls
firstdir  snap  text.txt  text2.txt  text_dir2  text_dir3
buhle_mukhuba@Sambe2025003:~$ mv text.txt text1.txt
buhle_mukhuba@Sambe2025003:~$ ls
firstdir  snap  text1.txt  text2.txt  text_dir2  text_dir3
buhle_mukhuba@Sambe2025003:~$ mv text1.txt firstdir/
buhle_mukhuba@Sambe2025003:~$ ls
firstdir  snap  text2.txt  text_dir2  text_dir3
buhle_mukhuba@Sambe2025003:~$ firstdir ls
firstdir: command not found
buhle_mukhuba@Sambe2025003:~$ cd firstdir
buhle_mukhuba@Sambe2025003:~/firstdir$ ls
text.txt  text1.txt  text2.txt
buhle_mukhuba@Sambe2025003:~/firstdir$ cd ..
buhle_mukhuba@Sambe2025003:~$ cd firstdir
buhle_mukhuba@Sambe2025003:~/firstdir$ cat text.txt
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
buhle_mukhuba@Sambe2025003:~/firstdir$ text2.txt
text2.txt: command not found
buhle_mukhuba@Sambe2025003:~/firstdir$ cat text2.txt
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
buhle_mukhuba@Sambe2025003:~/firstdir$ cat text1.txt
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
buhle_mukhuba@Sambe2025003:~/firstdir$ cd ..
buhle_mukhuba@Sambe2025003:~$ cat text1.txt
cat: text1.txt: No such file or directory
buhle_mukhuba@Sambe2025003:~$ cd firstdir
buhle_mukhuba@Sambe2025003:~/firstdir$ cat text1.txt
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
buhle_mukhuba@Sambe2025003:~/firstdir$ sort text1.txt
And another one
I got you again
Is this the last line?
Just kidding
More filler text
My name is Buhle
No, it's not
Okay, This is the last line
This is a line
This is another line
This is filler text
This is the final line
This is the next line
What about this one?
What do you think is next?
Yes, another line
buhle_mukhuba@Sambe2025003:~/firstdir$ sort -u


q
ssort u
