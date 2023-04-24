#!/bin/bash

# Checking the user's operating system.
os="Operating System:\t"`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
echo $os
# Verify OS
echo -e "Is this your oprating system? [Y/N]"
read oprating

# Checking if the user said yes or no.
if [ $oprating == "y" ]
then
# Checking the OS to run the script.
if [ $os == "Ubuntu"]
then
# Installing the pre-reqruments.
echo -e "I will need to install Python and pip"
sudo apt install wget build-essential libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev -y
sudo apt install python3.11 -y
sudo apt install python3-pip -y
echo ""
echo -e "Done isntalling\n"

# The Options That The User Will Have.
echo -e "Here are all the Scripts:\n"
echo -e "1. Install Script\n2. Server Script\nThose are the scripts that can be downlaoded and run.\n"
read option
echo -e "\n"
# Checking the option that was typed.
if [ $option == "1" ]
then
# Running Install script
echo -e "Running the Install Script\n"
cd /Scripts
./InstallScript.sh

elif [ $operating == "n" ]
then
echo -e "Oops sorry at this time, this hasn't been fixed!"
fi