#!/usr/bin/env bash

<<mycom
1. The first step is to extract the archive "/home/joao/Documents/Automate_Tasks_with_Bash_Shell_Scripting/archive.tar.gz".
 This can be done with the "sudo tar -xvzf archive.tar.gz" command.
mycom
# Extracting the archive

sudo tar -xvzf archive.tar.gz

<<mycom
2. The next step is to set the permissions on all the extracted files. This can be done with the "sudo chmod 0664 *" command.
mycom

# Set permission 0664 for all the extracted files
find archive -type f -exec chmod 664 {} \;