#!/bin/bash
# ----Config ----
ID_TELEGRAM='COLE SEU ID AQUI'
# ---------------
/etc/backups/zabbix-dump -o /tmp &>/dev/null
/bin/telegram -f "${ID_TELEGRAM}" "/tmp/zabbix_cfg*.gz" "zabbix" "Backup zabbix"
rm -f /tmp/*.gz
