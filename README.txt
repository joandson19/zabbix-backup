Fork do script do https://github.com/maxhq . Foram feitas algumas alterações para que funcionasse corretamente com o postgresql!

Baixe os arquivos 

# wget https://raw.githubusercontent.com/joandson19/zabbix-backup/main/zabbix-dump -O /etc/backups/zabbix-dump
# wget https://raw.githubusercontent.com/joandson19/zabbix-backup/main/backup_zbx.sh -O /etc/backups/backup_zbx.sh
# wget https://raw.githubusercontent.com/joandson19/zabbix-backup/main/telegram -O /bin/telegram

Aplique as permissões de execução

# chmod +x /etc/backups/backup_zbx.sh
# chmod +x /etc/backups/zabbix-dump
# chmod +x /bin/telegram

Edite os arquivos /etc/backups/backup_zbx.sh e /bin/telegram com as informações necessárias para o funcionamento no seu cenário.

Após Execute:

# sudo -u zabbix /etc/backups/backup_zbx.sh

Após testado vamos adicionar na cron para que seja executado automaticamente.

# crontab -e

No final da linha adicione o script abaixo. *Nesse caso abaixo está para todo dia a meia noite*
##Backup Zabbix
00 00  *   *   *  sudo -u zabbix /etc/backups/backup_zbx.sh

Reinicie a cron

# service cron restart
