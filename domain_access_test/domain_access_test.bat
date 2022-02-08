REM test domains batch file
input="/Users/lloi/domains.txt"
@ECHO off
REM set inputfile=c:\Users\lloi\domains.txt
set inputfile=domains1.txt
cls
:begin
ECHO ************************************************************
ECHO * This batch file will read each domain in the file        *
ECHO * and ping them for connectivity.                          *
ECHO * Choose y to continue.                                    *
ECHO * Choose n to exit.                                        *
ECHO ************************************************************
echo on
@echo off
choice /c:yn /M "Please select an option"
IF ERRORLEVEL 2 GOTO :none
IF ERRORLEVEL 1 GOTO :continue
:continue
echo on
ECHO Continue
@echo off 
For /F "tokens=*" %%A in (%inputfile%) do (@ping -n 1 %%A | find "TTL" >nul 
 if errorlevel 1 (
      echo offline
   ) else (
       echo online
       set domain="https://"%%A
echo %domain%
       wget --no-check-certificate -q -O >nul %domain%
   )
   )
@echo on
GOTO :end
:none
echo Nothing to do at this time.
GOTO :end
