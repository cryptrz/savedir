#!/bin/sh

BACKUP_DIRECTORY="/home/$USER/backups"

if [ $# -eq 0 ]; then
        echo "Type the path to directory to copy (Full path): "
        read SOURCE_DIRECTORY

        echo "Do you want to keep the default backup folder /home/$USER/backups? Y/n (or another key to cancel) "
        read DESTINATION_CHOICE

        if [ "$DESTINATION_CHOICE" = "n"  ] || [ "$DESTINATION_CHOICE" = "N" ]; then
                echo "Enter the full path for the destination folder: "
                read DESTINATION_PATH
                BACKUP_DIRECTORY=$DESTINATION_PATH
        elif [ "$DESTINATION_CHOICE" = "y"  ] || [ "$DESTINATION_CHOICE" = "Y" ]; then
                echo "The destination folder has not been modified"
        else
                echo "Closing the program"
                exit 1
        fi
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
        'sh savedir.sh <source path> <destination path>'"
        exit 1
fi

if [ ! -d "$SOURCE_DIRECTORY" ]; then
        echo "Error: The directory $SOURCE_DIRECTORY does not exist!"
        exit 1
fi

if [ ! -d "$BACKUP_DIRECTORY" ]; then
        mkdir -p "$BACKUP_DIRECTORY"
fi

cp -R "$SOURCE_DIRECTORY/" "$BACKUP_DIRECTORY"

if [ $? -eq 0 ]; then
        echo "Backup successful! The copy is stored in $BACKUP_DIRECTORY/$(basename $SOURCE_DIRECTORY)"
else
        echo "Backup failed!"
fi
