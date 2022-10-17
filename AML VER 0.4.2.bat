@echo off 
@echo. off 

set /a conclusao=0  
set /a barra= 

TITLE Ah, Moleque! Cleaner. 4.1 versaoBETA MODO RAPIDO  

mode 73,21
rem descomentar linha abaixo para voltar ao padrão
rem mode 71,38
color 0

CLS

set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t                                          
msg * Aviso! Caso haja, os navegadores serao fechados automaticamente.

taskkill /F /IM "ccleaner64.exe" 

echo ******************** Fechando ccleaner ********************
rem Simplesmente fecha a tarefa cclenaer
CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo.

taskkill /F /IM "ccleaner.exe" 


echo ******************** WINDOWS ********************

CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 


REM Apaga todas as pastas temporárias e arquivos temporários do usuário 
del /q /f /s %tmp%

takeown /A /R /D Y /F C:\Users\%USERNAME%\AppData\Local\Temp\ 

ica C:\Users\%USERNAME%\AppData\Local\Temp\ /grant administradores:F /T /C 
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Temp\ 
md C:\Users\%USERNAME%\AppData\Local\Temp\  

del /q /f /s C:\Windows\Prefetch 

REM Apaga os arquivos de \Windows\Temp
takeown /A /R /D Y /F C:\windows\temp  
ica C:\windows\temp /grant administradores:F /T /C
rmdir /q /s c:\windows\temp  
md c:\windows\temp  






CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 

echo.
echo NAO APAGA ARQUIVOS DE LOG
rem pause
goto naoApagaLogs


REM Apaga arquivos de log
del c:\windows\logs\cbs\*.log  
del C:\Windows\Logs\MoSetup\*.log  

del C:\Windows\Panther\*.log /s /q  
del C:\Windows\inf\*.log /s /q  
del C:\Windows\logs\*.log /s /q  
cls
echo aguarde
del C:\Windows\SoftwareDistribution\*.log /s /q  
echo aguarde
del C:\Windows\Microsoft.NET\*.log /s /q  
echo aguarde
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q  

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q  
echo aguarde
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q  
echo aguarde
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q  
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\  



:naoApagaLogs

CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 




rem goto pularEdge
echo ******************** EDGE ********************
taskkill /F /IM "msedge.exe"  
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\data*.  
echo aguarde
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\f*.  
echo aguarde
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\index.  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\Database\  
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\  
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\ScriptCache\  
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\  
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\GrShaderCache\GPUCache\  
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\ShaderCache\GPUCache\  
echo aguarde
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Storage\ext\  


CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 


del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\data*.  
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\f*.  

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\index.  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\Database\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\  
cls
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\GPUCache\  

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Storage\ext\  


CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 


del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\data*.  
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\f*.  

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\index.  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\Database\  
cls
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\  

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\GPUCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Storage\ext\  





CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 


:pularEdge


echo ******************** FIREFOX ********************
taskkill /F /IM "firefox.exe"  
REM define qual é a pasta Profile do usuário e apaga os arquivos temporários dali
set parentfolder=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles\  
for /f "tokens=*" %%a in ('"dir /b "%parentfolder%"|findstr ".*\.default-release""') do set folder=%%a  
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\entries\*.  
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.bin  
cls
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.lz*  
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\index*.*  

del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.little  
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\*.log /s /q  





CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 





echo ******************** VIVALDI ********************
taskkill /F /IM "vivaldi.exe"
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\
cls
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Storage\ext\




CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 






del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Storage\ext\





CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 





del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Storage\ext\





CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 





echo ******************** BRAVE ********************
taskkill /F /IM "brave.exe"
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\Database\
cls
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Storage\ext\





CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 





del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Storage\ext\





CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 





del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Storage\ext\





CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 





echo ******************** CHROME ********************
taskkill /F /IM "chrome.exe"
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\data*.  
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\f*.  
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\index.  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\  
cls
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\ScriptCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\GrShaderCache\GPUCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\ShaderCache\GPUCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Storage\ext\  





CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo. 





del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\data*.  
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\f*.  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\Database\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\GPUCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Storage\ext\  





CLS
set barra=%barra%__
set /a conclusao=%conclusao%+5  
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
echo. 
echo.
time /t
date /t 
echo. 
echo.                                          
echo.
echo %barra% %conclusao%%% Concluido... 
echo.
echo.
echo.
echo. 





del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\data*.  
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\f*.  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\Database\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\GPUCache\  
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Storage\ext\   



CLS
set  barra=%barra%__ 
set /a conclusao=%conclusao%+9,9  
echo ======================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ======================================================================
echo.
echo     Usuario logado: %username%       Computador: %computername%	
time /t
date /t 
echo  +---------------------------------------------------------------------+
echo  [          Espere a conclusao da Limpeza de disco , isso pode demorar ]                                 
echo  [ alguns minutos dependendo da situacao de cada computador.*          ]
echo  +---------------------------------------------------------------------+
echo                 [voce sera notificado ao fim da limpeza]
echo. 
echo  *Caso demore mais de 60 minutos, feche o programa e tente novamente.             
echo  ______%barra% %conclusao%%% Concluido... 
cleanmgr.exe /sagerun:n  




CLS
echo ====================================================================
echo                   P R O G R A M A : A M C L E A N E R
echo                      dev: Felipe Correa Carneiro
echo ====================================================================
echo     Usuario logado: %username%       Computador: %computername%	
time /t
date /t                                                           
echo  ##      #      ###      ##     #       # #     ###     ##       #  
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo  ##      #      # #      ##     ###     ###     ###     ##       #  
echo =====================================================================
echo.
CertUtil -hashfile "AML VER 0.4.2.bat"
CertUtil -hashfile "AML VER 0.4.2.bat">"Hash_AML VER 0.4.2.txt"
echo Hash do programa salvo automaticamente com sucesso em "../hash_AML VER 0.4.2.txt"
echo.
echo Precione qualquer tecla para fechar.
set fim_txt=Faxina realizada com sucesso!
MSG * %fim_txt% 
PAUSE
