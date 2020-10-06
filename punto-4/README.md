#### 4. Cree un Job que verifique todos los días a las 14 hs si existe el archivo 01-01-medios.csv, trabajado en el punto 1), en un directorio determinado y en caso afirmativo ejecute el Job para actualizar la DB generada antes.

* Creo un archivo main.bat, donde agrego las siguientes lineas de codigo. 

```
@echo off
 
TITLE MeuProcessoAutomatico
SET currentdir=%~dp0
SET kitchen=D:\Portables\Pdi53\Kitchen.bat
SET logfile="%currentdir%log.txt"
 
echo. >> %logfile%
echo. >> %logfile%

"%kitchen%" /file:"%currentdir%job-punto3.kjb" /level:Basic | tee.exe -a %logfile%
```



