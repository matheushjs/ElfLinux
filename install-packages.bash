#!/bin/bash

packages=$( cat package.list | grep -v "#" );

sudo apt install $packages
