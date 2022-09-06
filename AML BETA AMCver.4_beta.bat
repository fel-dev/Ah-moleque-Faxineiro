@echo off >null

set /a conclusao=0  >null
set asteristico=
set hash=

TITLE Ah, Moleque! Cleaner. 4 versaoBETA MODO RAPIDO  >null

mode 70,40
color 1f

CLS
CertUtil -hashfile "AML BETA AMCver.4_beta.bat"
CertUtil -hashfile "AML BETA AMCver.4_beta.bat">"hash_AML BETA AMCver.4_beta.txt"
echo Salvo com sucesso em "../hash_AML BETA AMCver.4_beta.txt"

echo.

set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null

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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo Tudo pronto!
echo.
echo.
echo Bora limpar?... Ah, moleque!
echo.
pause 

taskkill /F /IM "ccleaner64.exe" >null


CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 


taskkill /F /IM "ccleaner.exe" >null


CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 

call func_tela

echo ******************** WINDOWS ********************

REM Apaga todas as pastas temporárias e arquivos temporários do usuário 
del /q /f /s %tmp%  >null
takeown /A /R /D Y /F C:\Users\%USERNAME%\AppData\Local\Temp\ >null

ica C:\Users\%USERNAME%\AppData\Local\Temp\ /grant administradores:F /T /C >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Temp\ >null
md C:\Users\%USERNAME%\AppData\Local\Temp\  >null



CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 



REM Apaga os arquivos de \Windows\Temp

takeown /A /R /D Y /F C:\windows\temp  >null
ica C:\windows\temp /grant administradores:F /T /C  >null

rmdir /q /s c:\windows\temp  >null
md c:\windows\temp  >null






CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





REM Apaga arquivos de log
del c:\windows\logs\cbs\*.log  >null
del C:\Windows\Logs\MoSetup\*.log  >null

del C:\Windows\Panther\*.log /s /q  >null
del C:\Windows\inf\*.log /s /q  >null
del C:\Windows\logs\*.log /s /q  >null

del C:\Windows\SoftwareDistribution\*.log /s /q  >null
del C:\Windows\Microsoft.NET\*.log /s /q  >null
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q  >null

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q  >null
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q  >null
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q  >null

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\  >null





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





echo ******************** EDGE ********************
taskkill /F /IM "msedge.exe"  >null
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\data*.  >null

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\f*.  >null

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\index.  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\Database\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\  >null

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\ScriptCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\  >null

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\GrShaderCache\GPUCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\ShaderCache\GPUCache\  >null

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Storage\ext\  >null


CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 


del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\data*.  >null
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\f*.  >null

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\index.  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\Database\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\  >null

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\GPUCache\  >null

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Storage\ext\  >null


CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 


del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\data*.  >null
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\f*.  >null

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\index.  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\Database\  >null

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\  >null

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\GPUCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Storage\ext\  >null





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





echo ******************** FIREFOX ********************
taskkill /F /IM "firefox.exe"  >null
REM define qual é a pasta Profile do usuário e apaga os arquivos temporários dali
set parentfolder=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles\  >null
for /f "tokens=*" %%a in ('"dir /b "%parentfolder%"|findstr ".*\.default-release""') do set folder=%%a  >null
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\entries\*.  >null
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.bin  >null

del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.lz*  >null
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\index*.*  >null

del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.little  >null
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\*.log /s /q  >null





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





echo ******************** VIVALDI ********************
taskkill /F /IM "vivaldi.exe"
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\CacheStorage\

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\Default\Storage\ext\




CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 






del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Storage\ext\





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Storage\ext\





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





echo ******************** BRAVE ********************
taskkill /F /IM "brave.exe"
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\Database\

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\Default\Storage\ext\





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Storage\ext\





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Storage\ext\





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





echo ******************** CHROME ********************
taskkill /F /IM "chrome.exe"
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\data*.  >null
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\f*.  >null
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\index.  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\  >null

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\ScriptCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\GrShaderCache\GPUCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\ShaderCache\GPUCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Storage\ext\  >null





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\data*.  >null
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\f*.  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\Database\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\GPUCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Storage\ext\  >null





CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%
echo.
echo.
echo Limpando... Ah, moleque!
echo. 





del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\data*.  >null
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\f*.  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\Database\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\GPUCache\  >null
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Storage\ext\   >null



CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  %conclusao%%% CONCLUIDO... %asteristico%______
echo.
echo.
echo Limpando... Ah, moleque!
echo. 



echo ****************************************!!!!!!!!!!
echo AGORA: UTILITARIO DE LIMPEZA DE DISCO... AGUARDE 
echo ****************************************!!!!!!!!!!

cleanmgr.exe /sagerun:n  >null




CLS
set asteristico=%asteristico%__>null
set /a conclusao=%conclusao%+5  >null
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
echo _____________________________________________________________________
echo.
echo                        PROGRASSO EM ANDAMENTO                                          
echo.
echo  100%% CONCLUIDO! ___________________________________________________                 
echo.
echo  ##      #      ###      ##     #       # #     ###     ##       #  
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo  ##      #      # #      ##     ###     ###     ###     ##       #  
echo =====================================================================
echo.
echo.
ECHO                  Ah, moleque! 
ECHO Precione qualquer tecla para sair do programa.
pause >null
