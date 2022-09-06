TITLE Ah, Moleque! Cleaner. 3
echo off
:menu
color 0E
mode 90,45

echo.
CertUtil -hashfile "AMLimpador v.3.0.bat"
echo.

rem Uma breve explicacao sobre os comandos: o CLS limpa a tela, o ECHO mostra as mensagens na tela, GOTO vai para a opção desejada, lembrando que a opcao aparece com os : (dois pontos), COLOR altera as cores do prompt de comando. O PAUSE dá um break na tela aguardando apertar qualquer tecla. O comando SET aguarda teclar uma opcao estipulada pelo comando IF. Estes são os comandos basicos usados em um arquivo de lote. O parametro EQU utilizado no IF, se refere a comparação de igualdade (=). O parametro GEQ se for igual ou maior a opcao selecionada. Para o backup utilizei o XCOPY, pois diferente do comando copy, este copia diretorios e subdiretorios. As outras opcoes, foi utilizado o comando CHDSK, que é o comando interno do sistema e que checa o disco contra erros. O  CONTROL.EXE abre o painel de controle, DATE /t mostra a data atual, $COMPUTERNAME$, mostra o nome do computador e $USERNAME$ o nome do usuario logado.

echo Programa: Ah, Moleque Cleaner!     Desenvolvedor: Felipe Correa Carneiro
echo Computador: %computername%		Usuario: %username%
ver
time /t
date /t
pause
echo .....................................................................
echo        ATENCAO!!! Repare apenas o(s) iten(s) NECESSARIO(s)!!! 
echo              Pois isso pode gerar ainda mais problemas.   
echo =====================================================================
pause
echo                     M E N U  D E  T A R E F A S
echo _____________________________________________________________________
echo *                                                                    *
echo *    1. Esvaziar arquivos temporarios;                               *
echo *                                                                    *
echo *    2. Fazer Backup;                                                *
echo *                                                                    * 
echo *    3. Escanear Disco Local;                                        *
echo *                                                                    *
echo *    4. Reparar arquivos protegidos do Windows;                      *
echo *                                                                    *
echo *    5. Reparar arquivos corrompidos ou ausentes;                    *
echo *                                                                    *
echo *    6. [Opcao reservada para as proximas atualizacoes];             *
echo *                                                                    *
echo *    7. Reparo do Windows Update;                                    *
echo * ___________________________________________________________________*
echo *                                                                    *
echo *    8. Painel de Controle; e                                        *                                
echo *    9. Sair.                                                        *
echo * _________                                                          *
echo *_  notas  __________________________________________________________*
echo .
echo 1 - Os navegadores abertos serão automaticamente fechados;
echo.
echo 2 - O arquivo final sera enviado para Area de Trabalho;
echo.
echo 3 - O processo pode demorar dependendo do tamanho do disco e dos erros que possam sar encontrados. (esse comando nao repara bad block). Dica: se estiver usando notebook conecte o carregador, pois ele pode desligar durante o processo. Outro detalhe muito importante, nao INTERROMPA esse verificacao, ou isso pode ocasionar mais problemas.
echo.
echo 4 - duracao: ~20 minutos; e
echo.
echo 5 - Esse comando repara arquivos corrompidos ou ausentes do sistema operacional garantindo que todos os erros sejam corrigidos, e que seu sistema fique rodando liso.
echo _______________________________________________________________________ 

REM =============CONFIGURACAO DAS OPCOES===============================================================================================================================================


set /p opcao= Escolha uma opcao:

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9

echo ...
echo ____________________________________________________
echo "%opcao%" opcao invalida. Por favor tente novamente.
echo ____________________________________________________

echo ...
pause
echo
goto menu






REM ==============Esvaziar arquivos temporarios=============================================================================================================================================1
:opcao1

taskkill /F /IM "ccleaner64.exe"
taskkill /F /IM "ccleaner.exe"

cleanmgr.exe /sagerun:n

REM ******************** WINDOWS ********************

REM Apaga todas as pastas temporárias e arquivos temporários do usuário 

del /q /f /s %tmp%

takeown /A /R /D Y /F C:\Users\%USERNAME%\AppData\Local\Temp\

icacls C:\Users\%USERNAME%\AppData\Local\Temp\ /grant administradores:F /T /C

rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Temp\
md C:\Users\%USERNAME%\AppData\Local\Temp\

REM Apaga os arquivos de \Windows\Temp

takeown /A /R /D Y /F C:\windows\temp

icacls C:\windows\temp /grant administradores:F /T /C

rmdir /q /s c:\windows\temp

md c:\windows\temp

REM Apaga arquivos de log
del c:\windows\logs\cbs\*.log
del C:\Windows\Logs\MoSetup\*.log
del C:\Windows\Panther\*.log /s /q
del C:\Windows\inf\*.log /s /q
del C:\Windows\logs\*.log /s /q
del C:\Windows\SoftwareDistribution\*.log /s /q
del C:\Windows\Microsoft.NET\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\

REM ******************** EDGE ********************
taskkill /F /IM "msedge.exe"
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\Default\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 1"\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\"User Data"\"Profile 2"\Storage\ext\

REM ******************** FIREFOX ********************
taskkill /F /IM "firefox.exe"
REM define qual é a pasta Profile do usuário e apaga os arquivos temporários dali
set parentfolder=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles\
for /f "tokens=*" %%a in ('"dir /b "%parentfolder%"|findstr ".*\.default-release""') do set folder=%%a
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\entries\*.
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.bin
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.lz*
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\index*.*
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.little
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\*.log /s /q

REM ******************** VIVALDI ********************
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

del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 1"\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Vivaldi\"User Data"\"Profile 2"\Storage\ext\

REM ******************** BRAVE ********************
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

del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 1"\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\BraveSoftware\Brave-Browser\"User Data"\"Profile 2"\Storage\ext\

REM ******************** CHROME ********************
taskkill /F /IM "chrome.exe"
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\f*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\index.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\GrShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\ShaderCache\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\Default\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 1"\Storage\ext\

del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\data*.
del C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Cache\f*.
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\Database\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\CacheStorage\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\"Service Worker"\ScriptCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\GPUCache\
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Google\Chrome\"User Data"\"Profile 2"\Storage\ext\
@echo --------------------------------------------------------------------
@echo     Limpeza de disco e limpeza de pastas temporárias:
echo --------------------------------------------------------------------- 
echo  ##      #      ###      ##     #       # #     ###     ##       #  
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo  ##      #      # #      ##     ###     ###     ###     ##       #  
@echo -------------------------------------------------------------------


echo ==============================
echo *     Limpeza concluida      *
echo ==============================
pause
goto menu


REM ==========================CRIANDO BACK========================================================================================================================================================2
:opcao2
cls 
echo 	Criando pastas...
mkdir "C:\Users\%username%\Desktop\%date:/=-%_backup"
mkdir "C:\Users\%username%\Desktop\%date:/=-%_backup\Desktop"
mkdir "C:\Users\%username%\Desktop\%date:/=-%_backup\Documents"
mkdir "C:\Users\%username%\Desktop\%date:/=-%_backup\Pictures"
mkdir "C:\Users\%username%\Desktop\%date:/=-%_backup\Music"
mkdir "C:\Users\%username%\Desktop\%date:/=-%_backup\Videos"
mkdir "C:\Users\%username%\Desktop\%date:/=-%_backup\Downloads"

cls

echo 	Copiando arquivos...
xcopy /F /C /S /V C:\Users\%username%\Desktop\*.* C:\Users\%username%\Desktop\%date:/=-%_backup\Desktop
xcopy /F /C /S /V C:\Users\%username%\Documents\*.* C:\Users\%username%\Desktop\%date:/=-%_backup\Documents
xcopy /F /C /S /V C:\Users\%username%\Pictures\*.* C:\Users\%username%\Desktop\%date:/=-%_backup\Pictures
xcopy /F /C /S /V C:\Users\%username%\Music\*.* C:\Users\%username%\Desktop\%date:/=-%_backup\Music
xcopy /F /C /S /V C:\Users\%username%\Videos\*.* C:\Users\%username%\Desktop\%date:/=-%_backup\Videos
xcopy /F /C /S /V C:\Users\%username%\Downloads\*.* C:\Users\%username%\Desktop\%date:/=-%_backup\Downloads

cls
echo ==============================
echo          * Backup *
echo ==============================
echo  ##      #      ###      ##     #       # #     ###     ##       #  
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo  ##      #      # #      ##     ###     ###     ###     ##       #  
pause
goto menu


REM =========================[Escanear Disco Local]==================================================================================================================================================3
:opcao3
cls
CHKDSK C:
echo ==============================================
echo           * Escaneamento de Disco *
echo ==============================================
echo  ##      #      ###      ##     #       # #     ###     ##       #  
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo  ##      #      # #      ##     ###     ###     ###     ##       #  
pause
goto menu

REM =========================[protegidos do Windows]==================================================================================================================================4
:opcao4
cls
sfc /scannow
echo ==============================================
echo        *   Escaneamento de Disco   *
echo ==============================================
echo  ##      #      ###      ##     #       # #     ###     ##       #  
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo  ##      #      # #      ##     ###     ###     ###     ##       #  
pause
goto menu

REM =========================[corrompidos ou ausentes]==================================================================================================================================5
:opcao5

DISM.exe /Online /Cleanup-image /Restorehealth
 
echo ===========================================================
echo          * Reparar arquivos corrompidos ou ausentes *
echo ===========================================================
echo  ##      #      ###      ##     #       # #     ###     ##       #  
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo  ##      #      # #      ##     ###     ###     ###     ##       #  
pause
goto menu


REM =============================[reservado]=====================================================================================================================================6
:opcao6

echo "Reservado"
echo Volte para o menu.
pause
goto menu


REM =========================[Reparo Recomandado sem chkdsk e scannow]=====================================================================================================================7
echo *---------------------------------*
echo   Reparo Windows Update iniciado
echo *---------------------------------*

:opcao7

Netsh Winsock Reset 

Netsh int ip Reset  

ipconfig /flushdns 

ipconfig /Release 

ipconfig /Renew


net stop wuauserv
esentutl /d %windir%\softwaredistribution\datastore\datastore.edb
net start wuauserv


net stop bits  

net stop wuauserv  

net stop cryptsvc  

net stop trustedinstaller 

net start bits  

net start wuauserv  

net start cryptsvc  

net start trustedinstaller 

net stop bits  

net stop wuauserv  

net stop cryptsvc  

net stop trustedinstaller  

  

Del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\qmgr*.dat" Ren %systemroot%\SoftwareDistribution SD.OLD  

  

Ren %systemroot%\system32\catroot CTR.OLD  

  

Ren %systemroot%\system32\catroot2 CTR2.OLD  

sc.exe sdset bits  

  

D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)  

sc.exe sdset wuauserv  

D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)   

regsvr32.exe atl.dll  

regsvr32.exe urlmon.dll  

regsvr32.exe mshtml.dll  

regsvr32.exe shdocvw.dll  

regsvr32.exe browseui.dll  

regsvr32.exe jscript.dll  

regsvr32.exe vbscript.dll  

regsvr32.exe scrrun.dll  

regsvr32.exe msxml.dll  

regsvr32.exe msxml3.dll  

regsvr32.exe msxml6.dll  

regsvr32.exe actxprxy.dll  

regsvr32.exe softpub.dll  

regsvr32.exe wintrust.dll  

regsvr32.exe dssenh.dll  

regsvr32.exe rsaenh.dll  

regsvr32.exe gpkcsp.dll  

regsvr32.exe sccbase.dll  

regsvr32.exe slbcsp.dll  

regsvr32.exe cryptdlg.dll  

regsvr32.exe oleaut32.dll  

regsvr32.exe ole32.dll  

regsvr32.exe shell32.dll  

regsvr32.exe initpki.dll  

regsvr32.exe wuapi.dll  

regsvr32.exe wuaueng.dll  

regsvr32.exe wuaueng1.dll  

regsvr32.exe wucltui.dll  

regsvr32.exe wups.dll  

regsvr32.exe wups2.dll  

regsvr32.exe wuweb.dll  

regsvr32.exe qmgr.dll  

regsvr32.exe qmgrprxy.dll  

regsvr32.exe wucltux.dll  

regsvr32.exe muweb.dll  

regsvr32.exe wuwebv.dll  

netsh reset winsock  

proxycfg.exe -d  

netsh winhttp reset proxy  

net start bits  

net start wuauserv  

net start cryptsvc  

net start trustedinstaller 





echo *---------------------------------*
echo   Reparo Windows Update concluído
echo *---------------------------------*
pause
goto menu

REM =========================[Painel de Controle]==================================================================================================================================================8
:opcao8
cls
control.exe
echo =====================================
echo         * Painel de Controle *
echo =====================================
echo  ##      #      ###      ##     #       # #     ###     ##       #  
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo #       # #     # #     #       #       # #      #      # #     # # 
echo  ##      #      # #      ##     ###     ###     ###     ##       #  
pause
goto menu


REM =========================[SAINDO]===============================================================================================================================================================9
:opcao9

echo ===============
echo *   SAINDO    *
echo ===============

exit
