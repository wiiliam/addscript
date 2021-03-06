@ECHO OFF
:: A script that counts non-stop and writes the output into a file. Thus maxing out the (CPU and) storage space.

::=== START ===
:: Variables:
  :: `SET /P %Variables%="..." ` asks the user for an input.
SET /P delay="Enter desired number of delay 1+ second(s): "
SET /P name="Enter the desired name of output file: "
  :: Set a initial number for the bat file
SET /a num=1

:: Static variables without prompt:
SET targetdir=%homepath%/Desktop/ 
  :: Dir. whrere we want the file to be in.
SET /a number=2
  :: Variable where we add 1 and append to on the file.

cd %targetdir%
  :: Go to the directory specified on line 10.
echo %num% > %name%
  :: Create the file specified on line 7.

:: The loop:
:loop
echo %number% >> %name%
  :: Write number on last line of the file.
TIMEOUT /T %delay% /NOBREAK > NUL
  :: Delay for the amount specified on line 6.

SET /a number=%number%+1
  :: Add one to the number prior to the one before it.

goto loop
:: End of loop
