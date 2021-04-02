#!/usr/bin/env bash

git add .
git commit -m "update"
git push -u origin master

hugo # Generate the website inside the public directory
cd public
git add .
git commit -m "build"
git push origin master
cd ..