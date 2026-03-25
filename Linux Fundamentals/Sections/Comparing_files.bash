buhle_mukhuba@Sambe2025003:~$ ls
file.txt   firstdir  sorted_files.txt  text_dir2
files.txt  snap      text2.txt         text_dir3
buhle_mukhuba@Sambe2025003:~$ cat -n text2.txt
     1  My name is Buhle
     2  This is a line
     3  This is another line
     4  This is the next line
     5  What about this one?
     6  And another one
     7  What do you think is next?
     8  Yes, another line
     9  This is filler text
    10  More filler text
    11  Is this the last line?
    12  No, it's not
    13  Just kidding
    14  Okay, This is the last line
    15  I got you again
    16  This is the final line
buhle_mukhuba@Sambe2025003:~$ cat -n sorted_files.txt
     1  -rw-r--r-- 1 buhle_mukhuba buhle_mukhuba    0 Mar 25 13:39 files.txt
     2  -rw-r--r-- 1 buhle_mukhuba buhle_mukhuba  469 Mar 25 13:37 file.txt
     3  -rwxr--r-x 1 buhle_mukhuba buhle_mukhuba  311 Mar 25 10:46 text2.txt
     4  drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
     5  drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:48 text_dir2
     6  drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 11:57 firstdir
     7  drwxr-xr-x 4 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:50 text_dir3
     8  total 24
buhle_mukhuba@Sambe2025003:~$ diff text2.txt sorted_files.txt
1,16c1,8
< My name is Buhle
< This is a line
< This is another line
< This is the next line
< What about this one?
< And another one
< What do you think is next?
< Yes, another line
< This is filler text
< More filler text
< Is this the last line?
< No, it's not
< Just kidding
< Okay, This is the last line
< I got you again
< This is the final line
---
> -rw-r--r-- 1 buhle_mukhuba buhle_mukhuba    0 Mar 25 13:39 files.txt
> -rw-r--r-- 1 buhle_mukhuba buhle_mukhuba  469 Mar 25 13:37 file.txt
> -rwxr--r-x 1 buhle_mukhuba buhle_mukhuba  311 Mar 25 10:46 text2.txt
> drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
> drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:48 text_dir2
> drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 11:57 firstdir
> drwxr-xr-x 4 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:50 text_dir3
> total 24
buhle_mukhuba@Sambe2025003:~$ sdiff text2.txt sorted_files.txt
My name is Buhle                                              | -rw-r--r-- 1 buhle_mukhuba buhle_mukhuba    0 Mar 25 13:39 fi
This is a line                                                | -rw-r--r-- 1 buhle_mukhuba buhle_mukhuba  469 Mar 25 13:37 fi
This is another line                                          | -rwxr--r-x 1 buhle_mukhuba buhle_mukhuba  311 Mar 25 10:46 te
This is the next line                                         | drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 sn
What about this one?                                          | drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:48 te
And another one                                               | drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 11:57 fi
What do you think is next?                                    | drwxr-xr-x 4 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:50 te
Yes, another line                                             | total24
This is filler text                                           <
More filler text                                              <
Is this the last line?                                        <
No, it's not                                                  <
Just kidding                                                  <
Okay, This is the last line                                   <
I got you again                                               <
This is the final line                                        <
buhle_mukhuba@Sambe2025003:~$
