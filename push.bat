@echo off
git status
git add * 
git status
git commit -m "%TIME% %date%"
git push