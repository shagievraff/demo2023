@echo off
md first
cd first
md second
cd second
echo created %DATE% %TIME% >> test.txt
md C:\deletelater
copy test.txt C:\deletelater
cd ..
RMDIR second /s /Q
move C:\deletelater\test.txt 
echo finished %TIME% >> test.txt
RMDIR C:\deletelater /s /Q
pause
