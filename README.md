This script creates a copy of a folder of your choice. 

You can just type ```sh savedir.sh``` for an interactive usage 

(Or type first ```chmod +x savedir.sh``` if you want to skip ```sh``` and type directly ```./savedir.sh```)

You can also add directly the path as argument like this:

```sh savedir.sh /home/toto/Downloads``` 

By default, it's saved in ```/home/<username>/backups```, you can modify the content of ```BACKUP_DIRECTORY``` in the code if you prefer another default path. You also can add a different path as a second argument, for example: 

```sh savedir.sh /home/<username>/Downloads /home/<username>/anotherBackupFolder```

