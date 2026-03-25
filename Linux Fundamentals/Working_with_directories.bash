buhle_mukhuba@Sambe2025003:~$ pwd
/home/buhle_mukhuba
buhle_mukhuba@Sambe2025003:~$ cd /etc
buhle_mukhuba@Sambe2025003:/etc$ pwd
/etc
buhle_mukhuba@Sambe2025003:/etc$ cd ..
buhle_mukhuba@Sambe2025003:/$ pwd
/
buhle_mukhuba@Sambe2025003:/$ cd..
cd..: command not found
buhle_mukhuba@Sambe2025003:/$ cd ..
buhle_mukhuba@Sambe2025003:/$ cd ~
buhle_mukhuba@Sambe2025003:~$ pwd
/home/buhle_mukhuba
buhle_mukhuba@Sambe2025003:~$ cd ..
buhle_mukhuba@Sambe2025003:/home$ pwd
/home
buhle_mukhuba@Sambe2025003:/home$ cd buhle/
-bash: cd: buhle/: No such file or directory
buhle_mukhuba@Sambe2025003:/home$ cd buhle_mukhuba/
buhle_mukhuba@Sambe2025003:~$ cd .
buhle_mukhuba@Sambe2025003:~$ cd ..
buhle_mukhuba@Sambe2025003:/home$ pwd
/home
buhle_mukhuba@Sambe2025003:/home$ cd home/buh
le_mukhuba/
-bash: cd: home/buhle_mukhuba/: No such fileor directory
buhle_mukhuba@Sambe2025003:/home$ cd buhle_mu
khuba/home/
-bash: cd: buhle_mukhuba/home/: No such fileor directory
buhle_mukhuba@Sambe2025003:/home$ cd ~
buhle_mukhuba@Sambe2025003:~$ echo $OLDPWD
/home
buhle_mukhuba@Sambe2025003:~$ cd -
/home
buhle_mukhuba@Sambe2025003:/home$ echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib:/mnt/c/WINDOWS/system32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/System32/Wbem:/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0/:/mnt/c/WINDOWS/System32/OpenSSH/:/mnt/c/ngrok-v3-stable-windows-amd64:/mnt/c/Program Files/Git/cmd:/mnt/c/Users/Buhle Mukhuba/anaconda3:/mnt/c/Users/Buhle Mukhuba/anaconda3/Library/mingw-w64/bin:/mnt/c/Users/Buhle Mukhuba/anaconda3/Library/usr/bin:/mnt/c/Users/Buhle Mukhuba/anaconda3/Library/bin:/mnt/c/Users/Buhle Mukhuba/anaconda3/Scripts:/mnt/c/Users/Buhle Mukhuba/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/Buhle Mukhuba/AppData/Local/Programs/Microsoft VS Code/bin:/snap/bin
buhle_mukhuba@Sambe2025003:/home$ which cat
/usr/bin/cat
buhle_mukhuba@Sambe2025003:/home$ cat bin
cat: bin: No such file or directory
buhle_mukhuba@Sambe2025003:/home$ cat /bin
cat: /bin: Is a directory
buhle_mukhuba@Sambe2025003:/home$ cat sales.data
cat: sales.data: No such file or directory
buhle_mukhuba@Sambe2025003:/home$ cat /bin
cat: /bin: Is a directory
buhle_mukhuba@Sambe2025003:/home$ echo "My name is Buhle" >> buhle.txt
-bash: buhle.txt: Permission denied
buhle_mukhuba@Sambe2025003:/home$ cd ~
buhle_mukhuba@Sambe2025003:~$ echo "My name is Buhle" >> text.txt
buhle_mukhuba@Sambe2025003:~$ cat text.txt
My name is Buhle
buhle_mukhuba@Sambe2025003:~$ mkdir dir1
buhle_mukhuba@Sambe2025003:~$ mkdir -p dir1/dir2/dir3
buhle_mukhuba@Sambe2025003:~$ rmdir
rmdir: missing operand
Try 'rmdir --help' for more information.
buhle_mukhuba@Sambe2025003:~$ rmdir dir1
rmdir: failed to remove 'dir1': Directory not empty
buhle_mukhuba@Sambe2025003:~$ rmdir -rf dir1
rmdir: invalid option -- 'r'
Try 'rmdir --help' for more information.
buhle_mukhuba@Sambe2025003:~$ rm -rf dir1
buhle_mukhuba@Sambe2025003:~$ ls dir1
ls: cannot access 'dir1': No such file or directory
buhle_mukhuba@Sambe2025003:~$
