#!/bin/bash

user="$(cut -d'.' -f1 <<<"${HOSTNAME}")"
echo "$user"
