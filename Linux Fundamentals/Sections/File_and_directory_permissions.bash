buhle_mukhuba@Sambe2025003:~$ id -Gn
buhle_mukhuba adm cdrom sudo dip plugdev users
buhle_mukhuba@Sambe2025003:~$ ls -l
total 8
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
-rw-r--r-- 1 buhle_mukhuba buhle_mukhuba   17 Mar 24 12:41 text.txt
buhle_mukhuba@Sambe2025003:~$ chmod g+w text.txt
buhle_mukhuba@Sambe2025003:~$ ls -l text.txt
-rw-rw-r-- 1 buhle_mukhuba buhle_mukhuba 17 Mar 24 12:41 text.txt
buhle_mukhuba@Sambe2025003:~$ chmod g-w text.txt
buhle_mukhuba@Sambe2025003:~$ ls -l text.txt
-rw-r--r-- 1 buhle_mukhuba buhle_mukhuba 17 Mar 24 12:41 text.txt
buhle_mukhuba@Sambe2025003:~$ chmod u+x, g+w text.txt
chmod: invalid mode: ‘u+x,’
Try 'chmod --help' for more information.
buhle_mukhuba@Sambe2025003:~$ chmod u+rwx, g+w text.txt
chmod: invalid mode: ‘u+rwx,’
Try 'chmod --help' for more information.
buhle_mukhuba@Sambe2025003:~$ chmod u + rwx, g+w text.txt
chmod: invalid mode: ‘u’
Try 'chmod --help' for more information.
buhle_mukhuba@Sambe2025003:~$ chmod u-w, g+w text.txt
chmod: invalid mode: ‘u-w,’
Try 'chmod --help' for more information.
buhle_mukhuba@Sambe2025003:~$ chmod --help
Usage: chmod [OPTION]... MODE[,MODE]... FILE...
  or:  chmod [OPTION]... OCTAL-MODE FILE...
  or:  chmod [OPTION]... --reference=RFILE FILE...
Change the mode of each FILE to MODE.
With --reference, change the mode of each FILE to that of RFILE.

  -c, --changes          like verbose but report only when a change is made
  -f, --silent, --quiet  suppress most error messages
  -v, --verbose          output a diagnostic for every file processed
      --no-preserve-root  do not treat '/' specially (the default)
      --preserve-root    fail to operate recursively on '/'
      --reference=RFILE  use RFILE's mode instead of specifying MODE values.
                         RFILE is always dereferenced if a symbolic link.
  -R, --recursive        change files and directories recursively
      --help        display this help and exit
      --version     output version information and exit

Each MODE is of the form '[ugoa]*([-+=]([rwxXst]*|[ugo]))+|[-+=][0-7]+'.

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Report any translation bugs to <https://translationproject.org/team/>
Full documentation <https://www.gnu.org/software/coreutils/chmod>
or available locally via: info '(coreutils) chmod invocation'
buhle_mukhuba@Sambe2025003:~$ chmod o+w, g+w text.txt
chmod: invalid mode: ‘o+w,’
Try 'chmod --help' for more information.
buhle_mukhuba@Sambe2025003:~$ chmod o+w,g+w text.txt
buhle_mukhuba@Sambe2025003:~$ ls -l
total 8
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
-rw-rw-rw- 1 buhle_mukhuba buhle_mukhuba   17 Mar 24 12:41 text.txt
buhle_mukhuba@Sambe2025003:~$ chmod o-w text.txt
buhle_mukhuba@Sambe2025003:~$ ls -l
total 8
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
-rw-rw-r-- 1 buhle_mukhuba buhle_mukhuba   17 Mar 24 12:41 text.txt
buhle_mukhuba@Sambe2025003:~$ chmod 700 text.txt
buhle_mukhuba@Sambe2025003:~$ ls -l
total 8
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
-rwx------ 1 buhle_mukhuba buhle_mukhuba   17 Mar 24 12:41 text.txt
buhle_mukhuba@Sambe2025003:~$ chmod 755 text.txt
buhle_mukhuba@Sambe2025003:~$ ls -l
total 8
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
-rwxr-xr-x 1 buhle_mukhuba buhle_mukhuba   17 Mar 24 12:41 text.txt
buhle_mukhuba@Sambe2025003:~$ chmod 765 text.txt
buhle_mukhuba@Sambe2025003:~$ ls -l
total 8
drwx------ 3 buhle_mukhuba buhle_mukhuba 4096 Mar 24 16:58 snap
-rwxrw-r-x 1 buhle_mukhuba buhle_mukhuba   17 Mar 24 12:41 text.txt
buhle_mukhuba@Sambe2025003:~$
