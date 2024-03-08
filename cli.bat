@echo off

goto %1%

:--help
echo Menu de AJUDA do comando CLI
echo Comandos:
echo cli cng [PATH] [E para mudar o CLI Base]
EXIT /B 0

:cng
cd "%USERPROFILE%\CLI Apps\%2%"
EXIT /B 0

:help
goto --help
EXIT /B 0