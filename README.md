This script creates a copy of a folder of your choice. 

You can just type ```sh savedir.sh``` for an interactive usage.

(Or type first ```chmod +x savedir.sh``` if you want to skip ```sh``` and type directly ```./savedir.sh```)

You can also add directly the path to the source folder as argument like this:

```sh savedir.sh /home/toto/Downloads``` 

By default, the source is saved in ```/home/<username>/backups```. If you prefer another destination path, you can modify the content of ```BACKUP_DIRECTORY``` in the code. You can also add a different path in the interactive mode or as a second argument, for example: 

```sh savedir.sh /home/<username>/Downloads /home/<username>/anotherBackupFolder```

