rem samp-lenhador - by: proxlu

@if (@CodeSection == @Batch) @then

@echo off
set SendKeys=CScript //nologo //E:JScript "%~F0"

start "" /B cmd

echo:
echo Aguardando 10 segundos, mude para tela do SAMP VIDA LOKA e mantenha aberto.
echo:
timeout 10 /nobreak > nul

:Loop
timeout 3 /nobreak > nul
echo Abrindo chat ...
%SendKeys% "t"
timeout 1 /nobreak > nul
echo Digitando /on ...
%SendKeys% "/on{ENTER}"
echo Aguardando anti-spam ...
timeout 5 /nobreak > nul
echo Abrindo chat ...
%SendKeys% "t"
timeout 1 /nobreak > nul
echo Digitando /cortar ...
%SendKeys% "/cortar{ENTER}"
echo Aguardando arvore cair ...
timeout 15 /nobreak > nul
cls
goto :Loop

@end

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
