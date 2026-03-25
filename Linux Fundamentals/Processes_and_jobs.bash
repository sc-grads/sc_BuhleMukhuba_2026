buhle_mukhuba@Sambe2025003:~$ ps
    PID TTY          TIME CMD
    399 pts/0    00:00:00 bash
    699 pts/0    00:00:00 ps
buhle_mukhuba@Sambe2025003:~$ ps -p 399
    PID TTY          TIME CMD
    399 pts/0    00:00:00 bash
buhle_mukhuba@Sambe2025003:~$ ps -f
UID          PID    PPID  C STIME TTYTIME CMD
buhle_m+     399     398  0 17:07 pts/0    00:00:00 -bash
buhle_m+     705     399 99 17:44 pts/0    00:00:00 ps -f
buhle_mukhuba@Sambe2025003:~$ ps -e
    PID TTY          TIME CMD
      1 ?        00:00:01 systemd
      2 ?        00:00:00 init-systemd(Ub
      6 ?        00:00:00 init
     42 ?        00:00:00 systemd-journal
     90 ?        00:00:00 systemd-udevd
    100 ?        00:00:00 snapfuse
    101 ?        00:00:04 snapfuse
    102 ?        00:00:00 snapfuse
    198 ?        00:00:00 systemd-resolve
    199 ?        00:00:00 systemd-timesyn
    211 ?        00:00:00 cron
    212 ?        00:00:00 dbus-daemon
    218 ?        00:00:01 snapd
    219 ?        00:00:00 systemd-logind
    224 hvc0     00:00:00 agetty
    231 ?        00:00:00 rsyslogd
    242 tty1     00:00:00 agetty
    250 ?        00:00:00 unattended-upgr
    397 ?        00:00:00 SessionLeader
    398 ?        00:00:00 Relay(399)
    399 pts/0    00:00:00 bash
    400 pts/1    00:00:00 login
    448 ?        00:00:00 systemd
    449 ?        00:00:00 (sd-pam)
    506 pts/1    00:00:00 bash
    666 ?        00:00:00 wsl-pro-service
    706 pts/0    00:00:00 ps
buhle_mukhuba@Sambe2025003:~$ ps -ef
UID          PID    PPID  C STIME TTYTIME CMD
root           1       0  0 17:07 ?        00:00:01 /sbin/init
root           2       1  0 17:07 ?        00:00:00 /init
root           6       2  0 17:07 ?        00:00:00 plan9 --control-socket 7 --log-level 4 --s
root          42       1  0 17:07 ?        00:00:00 /usr/lib/systemd/systemd-journald
root          90       1  0 17:07 ?        00:00:00 /usr/lib/systemd/systemd-udevd
root         100       1  0 17:07 ?        00:00:00 snapfuse /var/lib/snapd/snaps/core22_2411.
root         101       1  0 17:07 ?        00:00:04 snapfuse /var/lib/snapd/snaps/snapd_26382.
root         102       1  0 17:07 ?        00:00:00 snapfuse /var/lib/snapd/snaps/tree_54.snap
systemd+     198       1  0 17:07 ?        00:00:00 /usr/lib/systemd/systemd-resolved
systemd+     199       1  0 17:07 ?        00:00:00 /usr/lib/systemd/systemd-timesyncd
root         211       1  0 17:07 ?        00:00:00 /usr/sbin/cron -f -P
message+     212       1  0 17:07 ?        00:00:00 @dbus-daemon --system --address=systemd: -
root         218       1  0 17:07 ?        00:00:01 /snap/snapd/current/usr/lib/snapd/snapd
root         219       1  0 17:07 ?        00:00:00 /usr/lib/systemd/systemd-logind
root         224       1  0 17:07 hvc0     00:00:00 /sbin/agetty -o -p -- \u --noclear --keep-
syslog       231       1  0 17:07 ?        00:00:00 /usr/sbin/rsyslogd -n -iNONE
root         242       1  0 17:07 tty1     00:00:00 /sbin/agetty -o -p -- \u --noclear - linux
root         250       1  0 17:07 ?        00:00:00 /usr/bin/python3 /usr/share/unattended-upg
root         397       2  0 17:07 ?        00:00:00 /init
root         398     397  0 17:07 ?        00:00:00 /init
buhle_m+     399     398  0 17:07 pts/0    00:00:00 -bash
root         400       2  0 17:07 pts/1    00:00:00 /bin/login -f
buhle_m+     448       1  0 17:07 ?        00:00:00 /usr/lib/systemd/systemd --user
buhle_m+     449     448  0 17:07 ?        00:00:00 (sd-pam)
buhle_m+     506     400  0 17:07 pts/1    00:00:00 -bash
root         666       1  0 17:38 ?        00:00:00 /usr/libexec/wsl-pro-service
buhle_m+     707     399  0 17:44 pts/0    00:00:00 ps -ef
buhle_mukhuba@Sambe2025003:~$ ps -fu buhle_m
error: user name does not exist

Usage:
 ps [options]

 Try 'ps --help <simple|list|output|threads|misc|all>'
  or 'ps --help <s|l|o|t|m|a>'
 for additional help text.

For more details see ps(1).
buhle_mukhuba@Sambe2025003:~$ pstree
systemd─┬─2*[agetty]
        ├─cron
        ├─dbus-daemon
        ├─init-systemd(Ub─┬─SessionLeader───Re+
        │                 ├─init───{init}
        │                 ├─login───bash
        │                 └─{init-systemd(Ub}
        ├─rsyslogd───3*[{rsyslogd}]
        ├─snapd───13*[{snapd}]
        ├─2*[snapfuse───2*[{snapfuse}]]
        ├─snapfuse───7*[{snapfuse}]
        ├─systemd───(sd-pam)
        ├─systemd-journal
        ├─systemd-logind
        ├─systemd-resolve
        ├─systemd-timesyn───{systemd-timesyn}
        ├─systemd-udevd
        ├─unattended-upgr───{unattended-upgr}
        └─wsl-pro-service───7*[{wsl-pro-servic+
buhle_mukhuba@Sambe2025003:~$ top
top - 17:49:27 up 41 min,  1 user,  load avera
Tasks:  27 total,   1 running,  26 sleeping,
%Cpu(s):  0.0 us,  0.1 sy,  0.0 ni, 99.9 id,
MiB Mem :   7606.2 total,   6965.7 free,    58
MiB Swap:   2048.0 total,   2048.0 free,

    PID USER      PR  NI    VIRT    RES    SHR
      1 root      20   0   21712  12272   9200
      2 root      20   0    3120   1920   1920
      6 root      20   0    3120   1792   1792
     42 root      19  -1   66824  18788  17892
     90 root      20   0   25408   6400   4864
    100 root      20   0  153068   1412   1280
    101 root      20   0  526756  11576   1408
    102 root      20   0  153068   1540   1280
    198 systemd+  20   0   21460  12672  10496
    199 systemd+  20   0   91028   7424   6656
    211 root      20   0    4236   2560   2432
    212 message+  20   0    9592   4864   4480
    218 root      20   0 2220208  37964  24448
    219 root      20   0   17964   8320   7424
    224 root      20   0    3160   1920   1792
    231 syslog    20   0  222508   5376   4352
    242 root      20   0    3116   1792   1664
    250 root      20   0  107028  22400  13184
    397 root      20   0    3124    896    768
    398 root      20   0    3140   1156   1024
    399 buhle_m+  20   0    6072   5120   3456
    400 root      20   0    6688   4352   3712
    448 buhle_m+  20   0   20276  10880   9088
buhle_mukhuba@Sambe2025003:~$ htop
Command 'htop' not found, but can be installedwith:
sudo snap install htop  # version 3.4.1, or
sudo apt  install htop  # version 3.2.2-2
See 'snap info htop' for additional versions.
buhle_mukhuba@Sambe2025003:~$ jobs
buhle_mukhuba@Sambe2025003:~$ ./long-running-program &
[1] 780
buhle_mukhuba@Sambe2025003:~$ -bash: ./long-running-program: No such file or directory

[1]+  Exit 127                ./long-running-program
buhle_mukhuba@Sambe2025003:~$ jobs
buhle_mukhuba@Sambe2025003:~$ kill -l
 1) SIGHUP       2) SIGINT       3) SIGQUIT4) SIGILL        5) SIGTRAP
 6) SIGABRT      7) SIGBUS       8) SIGFPE9) SIGKILL      10) SIGUSR1
11) SIGSEGV     12) SIGUSR2     13) SIGPIPE   14) SIGALRM      15) SIGTERM
16) SIGSTKFLT   17) SIGCHLD     18) SIGCONT   19) SIGSTOP      20) SIGTSTP
21) SIGTTIN     22) SIGTTOU     23) SIGURG    24) SIGXCPU      25) SIGXFSZ
26) SIGVTALRM   27) SIGPROF     28) SIGWINCH  29) SIGIO        30) SIGPWR
31) SIGSYS      34) SIGRTMIN    35) SIGRTMIN+136) SIGRTMIN+2   37) SIGRTMIN+3
38) SIGRTMIN+4  39) SIGRTMIN+5  40) SIGRTMIN+641) SIGRTMIN+7   42) SIGRTMIN+8
43) SIGRTMIN+9  44) SIGRTMIN+10 45) SIGRTMIN+1146) SIGRTMIN+12 47) SIGRTMIN+13
48) SIGRTMIN+14 49) SIGRTMIN+15 50) SIGRTMAX-1451) SIGRTMAX-13 52) SIGRTMAX-12
53) SIGRTMAX-11 54) SIGRTMAX-10 55) SIGRTMAX-956) SIGRTMAX-8   57) SIGRTMAX-7
58) SIGRTMAX-6  59) SIGRTMAX-5  60) SIGRTMAX-461) SIGRTMAX-3   62) SIGRTMAX-2
63) SIGRTMAX-1  64) SIGRTMAX
buhle_mukhuba@Sambe2025003:~$
