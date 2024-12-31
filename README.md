This script creates a copy of a folder of your choice. 

You can add directly the path as argument like ```sh savedir.sh /home/toto/Downloads``` (Or ```chmod +x savedir.sh``` if you want to skip ```sh``` and type directly ```./savedir.sh```)

Or you can just type ```sh savedir.sh``` for an interactive usage. 

By default, it's save in ```/home/<username>/backups```, you can modify the content of ```BACKUP_DIRECTORY``` in the code if you prefer another path.

You can add this script in **crontab** if you want to automate the backup. More details: https://linuxhandbook.com/crontab/

