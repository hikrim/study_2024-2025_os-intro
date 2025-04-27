#!/bin/bash
mkdir -p ~/backup
tar -czf ~/backup/backup_script_$(date +%Y%m%d_%H%M%S).tar.gz "$0"
echo "Резервная копия скрипта создана в ~/backup/"
