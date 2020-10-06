@echo off
 
TITLE MeuProcessoAutomatico
SET currentdir=%~dp0
SET kitchen=D:\Portables\Pdi53\Kitchen.bat
SET logfile="%currentdir%log.txt"
 
echo. >> %logfile%
echo. >> %logfile%

"%kitchen%" /file:"%currentdir%job-punto3.kjb" /level:Basic | tee.exe -a %logfile%