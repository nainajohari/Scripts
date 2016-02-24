gitlab-rake gitlab:backup:create
cd /var/opt/gitlab/backups/
MYDIR=`pwd`
ls -l $MYDIR | egrep '^d' | awk '{print $9}' | scp * wadmin@192.168.1.160:/home/wadmin/Git_backup
if [ $? -eq 0 ];
then
echo "success"
ls -l $MYDIR | egrep '^d'| awk '{print $9}' | rm -r * 
else
mail -s 'GITLAB Backup Alert' naina.johari379@webkul.com << EOF
GitLab backup is not created today !! Take your backup manually.
EOF
fi

