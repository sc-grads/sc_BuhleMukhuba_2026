buhle_mukhuba@Sambe2025003:~$ ls -l
total 20
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 11:57 firstdir
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
-rwxr--r-x 1 buhle_mukhuba buhle_mukhuba  311 Mar 25 10:46 text2.txt
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:48 text_dir2
drwxr-xr-x 4 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:50 text_dir3
buhle_mukhuba@Sambe2025003:~$ ls -l > file.txt
buhle_mukhuba@Sambe2025003:~$ cat file.txt
total 20
-rw-r--r-- 1 buhle_mukhuba buhle_mukhuba    0 Mar 25 13:37 file.txt
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 11:57 firstdir
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
-rwxr--r-x 1 buhle_mukhuba buhle_mukhuba  311 Mar 25 10:46 text2.txt
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:48 text_dir2
drwxr-xr-x 4 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:50 text_dir3
buhle_mukhuba@Sambe2025003:~$ ls >> file.txt
buhle_mukhuba@Sambe2025003:~$ less file.txt
buhle_mukhuba@Sambe2025003:~$ sort < file.text
-bash: file.text: No such file or directory
buhle_mukhuba@Sambe2025003:~$ sort < file.txt
-rw-r--r-- 1 buhle_mukhuba buhle_mukhuba    0 Mar 25 13:37 file.txt
-rwxr--r-x 1 buhle_mukhuba buhle_mukhuba  311 Mar 25 10:46 text2.txt
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:48 text_dir2
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 11:57 firstdir
drwxr-xr-x 4 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:50 text_dir3
file.txt
firstdir
snap
text2.txt
text_dir2
text_dir3
total 20
buhle_mukhuba@Sambe2025003:~$ ls -l > files.txt
buhle_mukhuba@Sambe2025003:~$ sort <files.txt> sorted_files.txt
buhle_mukhuba@Sambe2025003:~$ cat sorted_files.txt
-rw-r--r-- 1 buhle_mukhuba buhle_mukhuba    0 Mar 25 13:39 files.txt
-rw-r--r-- 1 buhle_mukhuba buhle_mukhuba  469 Mar 25 13:37 file.txt
-rwxr--r-x 1 buhle_mukhuba buhle_mukhuba  311 Mar 25 10:46 text2.txt
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:48 text_dir2
drwxr-xr-x 2 buhle_mukhuba buhle_mukhuba 4096 Mar 25 11:57 firstdir
drwxr-xr-x 4 buhle_mukhuba buhle_mukhuba 4096 Mar 25 10:50 text_dir3
total 24
buhle_mukhuba@Sambe2025003:~$
