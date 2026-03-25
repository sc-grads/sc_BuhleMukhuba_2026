buhle_mukhuba@Sambe2025003:~$ ls -F
firstdir/  snap/  text2.txt*  text_dir2/  text_dir3/
buhle_mukhuba@Sambe2025003:~$ ls *.txt
text2.txt
buhle_mukhuba@Sambe2025003:~$ ls a*
ls: cannot access 'a*': No such file or directory
buhle_mukhuba@Sambe2025003:~$ ls f*
text.txt  text1.txt  text2.txt
buhle_mukhuba@Sambe2025003:~$ ls t*.txt
text2.txt
buhle_mukhuba@Sambe2025003:~$ ls ?
ls: cannot access '?': No such file or directory
buhle_mukhuba@Sambe2025003:~$ ls ??
ls: cannot access '??': No such file or directory
buhle_mukhuba@Sambe2025003:~$ ls ????
tree
buhle_mukhuba@Sambe2025003:~$ ls a?.txt
ls: cannot access 'a?.txt': No such file or directory
buhle_mukhuba@Sambe2025003:~$ ls -l a*
ls: cannot access 'a*': No such file or directory
buhle_mukhuba@Sambe2025003:~$ ls -l t*
-rwxr--r-x 1 buhle_mukhuba buhle_mukhuba  311 Mar 25 10:46 text2.txt

text_dir2:
total 8
-rwxr--r-x 1 buhle_mukhuba buhle_mukhuba 311 Mar 25 10:48 text.txt
-rwxr--r-x 1 buhle_mukhuba buhle_mukhuba 311 Mar 25 10:48 text2.txt

text_dir3:
total 8
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:50 text_dir
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:50 text_dir2
buhle_mukhuba@Sambe2025003:~$ ls c[aeiou] t
ls: cannot access 'c[aeiou]': No such file or directory
ls: cannot access 't': No such file or directory
buhle_mukhuba@Sambe2025003:~$ ls c[aeiou]t
ls: cannot access 'c[aeiou]t': No such file or directory
buhle_mukhuba@Sambe2025003:~$ ls [m-t]*
text2.txt

snap:
tree

text_dir2:
text.txt  text2.txt

text_dir3:
text_dir  text_dir2
buhle_mukhuba@Sambe2025003:~$ ls *[[:digit:]]
text_dir2:
text.txt  text2.txt

text_dir3:
text_dir  text_dir2
buhle_mukhuba@Sambe2025003:~$
