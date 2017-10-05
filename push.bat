@echo off
git status
git add * 
git status
git commit -m "%date%, %TIME%"
git push