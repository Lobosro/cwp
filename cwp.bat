@echo off

goto %1%

:ver
TYPE cwpart.txt                                                  
echo Versao 1.2
EXIT /B 0

:--help
echo Menu de AJUDA do CWP
echo Comandos:
echo cwp ver [Versao do CWP]
echo cwp credits [E para ver os criadores do codigo]
echo cwp sync [Sincronizar partes do codigo]
echo cwp update [PATH] [Actualizar o CWP]
EXIT /B 0

:credits
TYPE cwpart.txt
echo Criado por Lobosro
echo Inspirado por Enderman
EXIT /B 0

:sync
copy /y "%USERPROFILE%\CLI Apps\CWP\cli.bat" "%USERPROFILE%\CLI Apps\platform-tools"
copy /y "%USERPROFILE%\CLI Apps\CWP\cli.bat" "%USERPROFILE%\CLI Apps"
echo Sync Completed
EXIT /B 0

:update
mkdir downloads
cd downloads
rmdir /s cwp
git clone https://github.com/Lobosro/cwp.git
cd ..
mkdir old
xcopy /y "%USERPROFILE%\CLI Apps\CWP" "%USERPROFILE%\CLI Apps\CWP\old"
rmdir "%USERPROFILE%\CLI Apps\CWP\old\old" >nul
tar -xf "%USERPROFILE%\CLI Apps\CWP\downloads\cwp\release.upd"
cwp sync
EXIT /B 0

:duolingo
TYPE duo.txt
start https://www.duolingo.com/
EXIT /B 0

:help
goto --help
EXIT /B 0

:game
cd %USERPROFILE%\Games\Steam\%2%
echo "%USERPROFILE%\Games\Steam\%2%"
cd "%2%"
%2%.exe
cd %USERPROFILE%\CLI Apps\CWP
EXIT /B 0

