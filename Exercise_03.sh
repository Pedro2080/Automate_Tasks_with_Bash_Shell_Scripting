#!/usr/bin/env bash

TARGET_DIR="/home/joao/Documents/Automate_Tasks_with_Bash_Shell_Scripting"

<<mycom
1. The first step is to extract the archive "/home/joao/Documents/Automate_Tasks_with_Bash_Shell_Scripting/archive.tar.gz".
 This can be done with the "sudo tar -xvzf archive.tar.gz" command.
mycom

# Extracting the archive
sudo tar -xvzf ${TARGET_DIR}/archive.tar.gz

<<mycom
2. The next step is to set the permissions on all the extracted files. This can be done with the "sudo chmod 0664 *" command.
mycom

# Set permission 0664 for all the extracted files
find ${TARGET_DIR} -type f -exec chmod 664 {} \;

<<mycom
3. The next step is to set the permissions on all the extracted folders. This can be done with the "sudo chmod 0775 *" command.
mycom

## Set permission 0775 for all the extracted folders
find ${TARGET_DIR} -type d -exec 0775 {} \;

<<mycom
4. The next step is to set the owner of all the extracted files and folders to "nobody". This can be done with the "sudo chown nobody *" command.
mycom

# Set owner - nobody and group - nogroup for all files
chown -R nobody:nogroup ${TARGET_DIR}