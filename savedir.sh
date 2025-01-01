#!/bin/bash

BACKUP_DIRECTORY="/home/$USER/backups"

if [ $# -eq 0 ]; then
        echo "Type the path to directory to copy (Full path): "
        read SOURCE_DIRECTORY
elif [ $# -eq 1 ]; then
        SOURCE_DIRECTORY=$1
elif [ $# -eq 2 ]; then
        SOURCE_DIRECTORY=$1
        BACKUP_DIRECTORY=$2
else
        echo "Usage:\n
        'sh savedir.sh' \n
        or\n 
        'sh savedir.sh <source path>'\n
        or\n 
        'sh savedir.sh <source path> <destination path'>"
        exit 1
fi

if [ ! -d "$SOURCE_DIRECTORY" ]; then
        echo "Error: The directory $SOURCE_DIRECTORY does not exist !"
        exit 1
fi

if [ ! -d "$BACKUP_DIRECTORY" ]; then
        mkdir -p "$BACKUP_DIRECTORY"
fi

cp -R "$SOURCE_DIRECTORY/" $BACKUP_DIRECTORY

if [ $? -eq 0 ]; then
        echo "Backup successfull! The copy is stored in $BACKUP_DIRECTORY$(basename $SOURCE_DIRECTORY)"
else
        echo "Backup failed!"
fi
