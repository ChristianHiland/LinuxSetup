#!/bin/bash

echo -e "Is this your oprating system? [Y/N]"
echo -e grep "Operating System" | cut -d ' ' -f5-`

# The Options That The User Will Have.
echo -e "Here are all the Scripts:\n"
echo -e "1. Install Script\n2. Server Script\nThose are the scripts that can be downlaoded and run."
read option

if [ option ==  "1"]
then

