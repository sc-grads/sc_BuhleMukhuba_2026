buhle_mukhuba@Sambe2025003:~$ crontab -l
no crontab for buhle_mukhuba
buhle_mukhuba@Sambe2025003:~$ vi my-cron
buhle_mukhuba@Sambe2025003:~$ crontab my-cron
my-cron: No such file or directory
buhle_mukhuba@Sambe2025003:~$ vi my-cron
buhle_mukhuba@Sambe2025003:~$ crontab my-cron
buhle_mukhuba@Sambe2025003:~$ crontab -l
#       This is a new cron job
0 7 * * 1 textdir

buhle_mukhuba@Sambe2025003:~$ crontab -r
buhle_mukhuba@Sambe2025003:~$ crontab -l
no crontab for buhle_mukhuba
buhle_mukhuba@Sambe2025003:~$
