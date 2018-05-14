cls
@ECHO OFF
color 0A
SET /a i=0
title Portal Locker
echo/Date  : %DATE%
echo/Time  : %TIME%
if EXIST "Locker" goto LOCK
if EXIST "RunAway" goto LOCK1
if EXIST "Temp~.{D^N+E.5468616e6f6674.43796265727365637572697479}" goto UNLOCK
if EXIST "Temp1~.{D^N+E.4368616974616e7961.4c61786d616e}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:Locker1
if NOT EXIST RunAway goto MDLOCKER1
:LOCK
:CONFIRM
echo.
echo Are you sure about locking the folder(Y/N)
set /p "cho=>"
if %cho%==Y goto LOCKa
if %cho%==y goto LOCKa
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:Locka
ren Locker "Temp~.{D^N+E.5468616e6f6674.43796265727365637572697479}"
attrib +h +s "Temp~.{D^N+E.5468616e6f6674.43796265727365637572697479}"
if EXIST "RunAway" goto LOCK1
echo.
echo Folder Locked
echo.
pause
goto end
:LOCK1
ren RunAway "Temp1~.{D^N+E.4368616974616e7961.4c61786d616e}"
attrib +h +s "Temp1~.{D^N+E.4368616974616e7961.4c61786d616e}"
echo.
echo Folder Locked
echo.
pause
goto End
:UNLOCK
if %i%==10 goto end1
echo.
echo Enter Password To Unlock Folder
set/p "pass=>"
if NOT %pass%==project goto MDLOCKER2
attrib -h -s "Temp~.{D^N+E.5468616e6f6674.43796265727365637572697479}"
ren "Temp~.{D^N+E.5468616e6f6674.43796265727365637572697479}" Locker
echo.
echo Folder Unlocked Successfully
echo.
pause
goto End
:MDLOCKER2
if Not %pass%==hello123 goto FAIL
attrib -h -s "Temp1~.{D^N+E.4368616974616e7961.4c61786d616e}"
ren "Temp1~.{D^N+E.4368616974616e7961.4c61786d616e}" RunAway
echo.
echo Folder Unlocked Successfully
echo.
pause
goto End
:FAIL
SET /a i=%i%+1
SET /a j=10-%i%
if %j%==1 goto chance
echo Invalid password - %j% Chances Left
goto UNLOCK
:chance
echo Last Chance Left - After This All Of Your Hidden Data Will VANISH
goto UNLOCK
:MDLOCKER
md Locker
goto Locker1
:MDLOCKER1
md RunAway
echo Locker created successfully
echo.
pause
goto End
:end1
echo.
echo You've used all the chances
echo Bye..Bye..Bye
rmdir /s /q "Temp~.{D^N+E.5468616e6f6674.43796265727365637572697479}"
echo.
pause
goto end
:End