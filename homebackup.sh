#!/bin/bash

# my script for backing up my home partition

mkdir -p /media/Storage/Linux_Home_Backups/crunchbang

rsync -av --progress --delete --log-file=/home/ed/backuplog/$(date +%Y%m%d)_rsync.log --exclude "/home/ed/.gvfs" --exclude "/home/ed/Dropbox" /home /media/Storage/Linux_Home_Backups/crunchbang
