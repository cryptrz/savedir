#!/bin/bash

echo "Type the path to directory to copy (Full path): "
read SOURCE_DIRECTORY

BACKUP_DIRECTORY="/home/$USER/backups"

if [ ! -d "$SOURCE_DIRECTORY" ]; then
        echo "Error: The directory $SOURCE_DIRECTORY does not exist !"
        exit 1
fi

if [ ! -d "$BACKUP_DIRECTORY" ]; then
        mkdir -p "$BACKUP_DIRECTORY"
fi

cp -R "$SOURCE_DIRECTORY/" $BACKUP_DIRECTORY

if [ $? -eq 0 ]; then
        echo "Backup successfull! The copy is stored in $BACKUP_DIRECTORY/$(basename $SOURCE_DIRECTORY)"
else
        echo "Backup failed!"
fi
