#!/bin/bash
git status
echo "git add"
git add .
echo "git commit"
git commit -m "changes done"
echo "git push"
git push -u origin master
