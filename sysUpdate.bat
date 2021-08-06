@ECHO OFF

:: Set UTF-8 enconding
:: chcp 65001

:: Mensagem
ECHO +---------------------------------+
ECHO ^|                                 ^|
ECHO ^| Atualizando o sistema. Aguarde! ^|
ECHO ^|                                 ^|
ECHO +---------------------------------+

:: Ping usado como sleep time por 5seg
ping 127.0.0.1 -n 6 > nul

:: Faz a requisição para atualizar
git fetch
git reset --hard
git pull

:: Inicia o systema após atualização
start SysControl.exe
exit