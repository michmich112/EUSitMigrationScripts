# EUS IT Migration - User creation script

## Description
This script creates new users and associates their HOME file to the following dir: `/srv/www/<username>`.

## Requirements
Your machine needs to run a Unix based OS and have BASH installed.

## Usage
If the script is installed as per the instructions below, this is the proper way of running it: `newuser <username>`

## Installing the scripts on your machine

The following instructions will guide you on how to install this script and have it run easily on your machine.
First run this command to make it executable: `chmod ug+x createUser.sh`
Then move it to  `/bin` by running the following command as the admin or root: `mv createUser.sh /bin/newuser` (don't forget to verify that the command `newuser` doesnt exist by running `ls -la | grep newuser`). The command new user will now run the script and create a new user. 
