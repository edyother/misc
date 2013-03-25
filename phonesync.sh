#!/bin/bash

#Back my phone

# backup internal storage including deletes

rsync -av -- delete --progress --log-file=/home/ed/Desktop/$(date +%Y%m%d)_Phone-INT.log /media/ed/MOT/ /home/ed/BionicBackup/InternalSD

# backup external SD card including deletes

rsync -av --delete --progress --log-file=/home/ed/Desktop/$(date +%Y%m%d)_Phone-EXT.log /media/ed/6003-7123 /home/ed/BionicBackup/ExternalSD

# backup new files from ExternalSD/6003-7123/dcim no deleting

rsync -av --progress --log-file=/home/ed/Desktop/$(date +%Y%m%d)_ExtDCIM.log /home/ed/BionicBackup/ExternalSD/6003-7123/dcim /home/ed/BionicBackup/All_Pics_and_Vids/Ext-dcim

# backup new files from ExternalSD/6003-7123/Pictures

rsync -av --progress --log-file=/home/ed/Desktop/$(date +%Y%m%d)_ExtPictures.log /home/ed/BionicBackup/ExternalSD/6003-7123/Pictures /home/ed/BionicBackup/All_Pics_and_Vids/Ext-Pictures

# backup new files from InternalSD/DCIM

rsync -av --progress --log-file=/home/ed/Desktop/$(date +%Y%m%d)_IntDCIM.log /home/ed/BionicBackup/InternalSD/DCIM /home/ed/BionicBackup/All_Pics_and_Vids/Int-DCIM

# backup new files from InternalSD/Photo Grid

rsync -av --progress --log-file=/home/ed/Desktop/$(date +%Y%m%d)_IntPhotoGrid.log "/home/ed/BionicBackup/InternalSD/Photo Grid" /home/ed/BionicBackup/All_Pics_and_Vids/Int-PhotoGrid

# backup new files from InternalSD/PicSayPro

rsync -av --progress --log-file=/home/ed/Desktop/$(date +%Y%m%d)_IntPicSayPro.log /home/ed/BionicBackup/InternalSD/PicSayPro /home/ed/BionicBackup/All_Pics_and_Vids/Int-PicSayPro

# backup new files from InternalSD/shotcontrol

rsync -av --progress --log-file=/home/ed/Desktop/$(date +%Y%m%d)_Intshotcontrol.log /home/ed/BionicBackup/InternalSD/shotcontrol /home/ed/BionicBackup/All_Pics_and_Vids/Int-shotcontrol

# backup new files from InternalSD/VirtualRecorder

rsync -av --progress --log-file=/home/ed/Desktop/$(date +%Y%m%d)_IntVirtualRecorder.log /home/ed/BionicBackup/InternalSD/VirtualRecorder  /home/ed/BionicBackup/All_Audio/Int-VirtualRecorder

cat /home/ed/Desktop/*.log > All_the_Logs.txt
