#!/bin/bash

# Insppected by Dylan Armstrong 11-06-23
# Total num of errors: 2
# Syntax errors
# Error - useradd command had an @ symbol in it - syntax error
# Error - passwd - user currently dosen't exist

read -p "Enter Username: " user
read -p "Enter Password: " pwrd

useradd $user

usermod -aG sudo $user
