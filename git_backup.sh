gitlab-rake gitlab:backup:create
cd /var/opt/gitlab/backups/
MYDIR=`pwd`
ls -l $MYDIR | egrep '^d' | awk '{print $9}' | scp * wadmin@192.168.1.160:/home/wadmin/Git_backup
ls -l $MYDIR | egrep '^d'| awk '{print $9}' | rm -r * 
