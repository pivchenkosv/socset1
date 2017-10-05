@echo off
git status
git add * 
git status
<<<<<<< HEAD
git commit -m "%date%, %TIME%"
=======
git commit -m "%date% %TIME%"
>>>>>>> c49a04e6dfd85a18ced875c36117da50da2d883b
git push