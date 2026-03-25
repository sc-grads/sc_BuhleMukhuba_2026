buhle_mukhuba@Sambe2025003:~$ history
    1  pwd
    2  clear
    3  pwd
    4  cd /etc
    5  pwd
    6  ls
    7  ls -l
    8  ls -l shells
    9  cat shells
   10  man ls
   11  id -Gn
   12  ls -l
   13  chmod g+w text.txt
   14  ls -l text.txt
   15  chmod g-w text.txt
   16  ls -l text.txt
   17  chmod u+x, g+w text.txt
   18  chmod u+rwx, g+w text.txt
   19  chmod u + rwx, g+w text.txt
   20  chmod u-w, g+w text.txt
   21  chmod --hel
   22  chmod o+w, g+w text.txt
   23  chmod o+w,g+w text.txt
   24  ls -l
   25  chmod o-w text.txt
   26  ls -l
   27  chmod 700 text.txt
   28  ls -l
   29  chmod 755 text.txt
   30  ls -l
   31  chmod 765 text.txt
   32  ls -l
   33  clear
   34  find
   35  find .
   36  find /usr/sbin -iname networkmanager
   37  find /usr/sbin -name "*b"
   38  find /usr/sbin -iname ACCESSDb
   39  find /usr -mtime +1 -mtime -30
   40  find /usr -name "s*" -ls
   41  find /usr -size +1M -size -2M
   42  find /usr -size +1M
   43  find /etc -type d -newer /etc/passwd
   44  ls -ld /etc/my.cnf.d
   45  ls -l /etc/passwd
   46  find . -exec file {} \;
   47  locate uptime
   48  sudo apt install locate
   49  man locate
   50  clear
   51  nano text.txt
   52  cat text.txt
   53  more text.txt
   54  less text.txt
   55  head text.txt
   56  tail text.txt
   57  head -2 text.txt
   58  tail -2 text.txt
   59  clear
   60  vi text.txt
   61  vimm text.txt
   62  vim text.txt
   63  view text.txt
   64  clear
   65  emacs text.txt
   66  sudo snap install emacs
   67  sudo apt install emacs
   68  clear
   69  cp text.txt
   70  cp text.txt text2.txt
   71  clear
   72  cp text.txt text2.txt
   73  mkdir text_dir
   74  cp text.txt text2.txt text_dir/
   75  ls text_dir/
   76  cp -i text.txt text.txt
   77  cp -i text.txt text2.txt
   78  cp -r text_dir text_dir2
   79  ls text_dir2
   80  mkdir text_dir3
   81  cp -r text_dir text_dir2 text_dir3
   82  ls text_dir3
   83  tree text_dir3
   84  ls
   85  mv text_dir firstdir
   86  ls
   87  mv text.txt text1.txt
   88  ls
   89  mv text1.txt firstdir/
   90  ls
   91  firstdir ls
   92  cd firstdir
   93  ls
   94  cd ..
   95  cd firstdir
   96  cat text.txt
   97  text2.txt
   98  cat text2.txt
   99  cat text1.txt
  100  cd ..
  101  cat text1.txt
  102  cd firstdir
  103  cat text1.txt
  104  sort text1.txt
  105  sort -u
  106  clear
  107  ls -F
  108  ls *.txt
  109  ls a*
  110  ls f*
  111  ls t*.txt
  112  ls ?
  113  ls ??
  114  ls ????
  115  ls a?.txt
  116  ls -l a*
  117  ls -l t*
  118  ls c[aeiou] t
  119  ls c[aeiou]t
  120  ls [m-t]*
  121  ls *[[:digit:]]
  122  clear
  123  ls -l
  124  ls -l > file.txt
  125  cat file.txt
  126  ls >> file.txt
  127  less file.txt
  128  sort < file.text
  129  sort < file.txt
  130  ls -l > files.txt
  131  sort <files.txt> sorted_files.txt
  132  cat sorted_files.txt
  133  clear
  134  ls
  135  cat -n text2.txt
  136  cat -n sorted_files.txt
  137  diff text2.txt sorted_files.txt
  138  sdiff text2.txt sorted_files.txt
  139  clear
  140  cat text2.txt
  141  grep Buhle text2.txt
  142  grep line text2.txt
  143  grep o text2.txt
  144  grep -v o text2.txt
  145  grep Line text2.txt
  146  grep -i Line
  147  grep -i Line text2.txt
  148  grep -ci Line text2.txt
  149  grep -ni Line text2.txt
  150  file text2.txt
  151  strings text2.txt | grep -i line
  152  strings text2.txt | grep -i line | head -1
  153  strings text2.txt | grep -i line | head -1 | cut -d''-f2
  154  strings text2.txt | grep -i line | head -1 | cut -d' ' -f2
  155  clear
  156  sftp linuxsvr
  157  clear
  158  echo $PS1
  159  PS1="\@
  160  echo $PS1
  161  PS1="\@"
  162  echo $PS1
  163  PS1="\d\u@\H"
  164  clear
  165  printenv
  166  printenv HOME
  167  clear
  168  ps
  169  ps -p 399
  170  ps -f
  171  ps -e
  172  ps -ef
  173  ps -fu buhle_m
  174  pstree
  175  top
  176  htop
  177  jobs
  178  ./long-running-program &
  179  jobs
  180  kill -l
  181  clear
  182  crontab -l
  183  vi my-cron
  184  crontab my-cron
  185  vi my-cron
  186  crontab my-cron
  187  crontab -l
  188  crontab -r
  189  crontab -l
  190  clear
  191  whoami
  192  sudo -l
  193  history
  194  pwd
  195  echo $HISTSIZE
  196  history
  197  clear
  198  history
buhle_mukhuba@Sambe2025003:~$ !1
pwd
/home/buhle_mukhuba
buhle_mukhuba@Sambe2025003:~$ echo $HISTSIZE
1000
buhle_mukhuba@Sambe2025003:~$ !!
echo $HISTSIZE
1000
buhle_mukhuba@Sambe2025003:~$ !e
echo $HISTSIZE
1000
buhle_mukhuba@Sambe2025003:~$ echo !:2
-bash: :2: bad word specifier
buhle_mukhuba@Sambe2025003:~$ ls files.txt sorted_files.txt
files.txt  sorted_files.txt
buhle_mukhuba@Sambe2025003:~$ echo !:2
echo sorted_files.txt
sorted_files.txt
buhle_mukhuba@Sambe2025003:~$
