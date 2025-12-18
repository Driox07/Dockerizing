#!/bin/bash
echo Input database IP address:
read ip
echo Input database port:
read port

echo Initializing database $ip:$port...

postgres