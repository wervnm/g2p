@echo off
@echo ******************
@echo ---File Creator---
@echo ******************
set /A iter=0
set /A iter=%iter%+1
set /P files="Enter the number of files to make:  "
set dt=%date:~7,2%-%date:~4,2%-%date:~10,4%_%time:~0,2%_%time:~3,2%_%time:~6,2%
for /L %%P in (1,1,%files%) do (
set /A iter=%iter%+1
echo "Yo" >> FileCreationTest-%dt%-%%P.txt)
pause