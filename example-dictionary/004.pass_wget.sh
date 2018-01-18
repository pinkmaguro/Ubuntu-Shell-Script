#!/bin/bash

echo "Password: "

# echoback OFF(-echo)
stty -echo
read password

stty echo

echo

echo "Your password: $password"
