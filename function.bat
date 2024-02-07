@echo off

REM ------------------------------------------------------
REM
REM a normal function 
REM
REM goto :main
REM
REM
REM :function
REM     echo This is another funtion!
REM goto :eof
REM
REM :main
REM     echo   Main function is being called!
REM     call :function
REM     echo End of main Function!
REM     echo End of Program
REM goto :eof


REM :: goes to previous place


REM -----------------------------------------
REM
REM Arguements
REM

REM goto :main
REM
REM :say_something
REM     echo I am saying something! %~1 and %~2
REM goto :eof
REM
REM :main
REM    echo This is the main function! 
REM
REM    call :say_something tiger boat
REM goto :eof




REM -----------------------------------------
REM
REM return values
REM

REM goto :main
REM
REM
REM :new_function
REM     echo          Changing a variable...
REM     set %~1=Lunch
REM
REM goto :eof
REM
REM :main
REM     echo This is the main function!
REM rem  echo %variable%
REM     
REM     set new_var=Dinner
REM
REM     echo The variable's value is at first %new_var%
REM
REM     call :new_function new_var
REM     REM echo the variables new value is %variable%
REM     echo The variable's value now is %new_var%
REM     rem changed new_var's value like this
REM
REM goto :eof




REM -----------------------------------------
REM
REM local scope
REM

REM goto :main
REM
REM :func
REM setlocal
REM
REM     echo   Func says P is %p%
REM     set x=30
REM     echo   Func says x is %x%
REM
REM endlocal
REM goto :eof
REM
REM :main
REM setlocal
REM
REM     echo The main function is being called!
REM     set p=4
REM     echo Main says P is %p%
REM
REM     call :func
REM
REM     echo Main says x is %x%
REM
REM endlocal
REM goto :eof




REM -----------------------------------------
REM
REM terminal session scope
REM

REM goto :main
REM
REM
REM :main
REM setlocal
REM
REM     echo creating a variable
REM     rem set global_var=existing
REM     set local_var=nonexistant
REM
REM endlocal
REM goto :eof



REM -----------------------------------------
REM
REM  return with local scopes
REM

REM goto :main
REM
REM :add_one
REM setlocal
REM     set something=everything
REM     echo    Performing ADD ONE on X...
REM
REM endlocal & set /a x=%x% + 1
REM goto :eof
REM
REM :main
REM setlocal
REM     echo Main function is running...
REM     echo Setting X to 1...
REM     set /a x=1
REM     
REM     call :add_one
REM
REM
REM     echo The value of X now is %x%
REM     echo.
REM     echo:
REM     echo Something is %something%
REM endlocal
REM goto :eof





REM -----------------------------------------
REM multiple variables, for one function
REM  

REM goto :main
REM
REM
REM :add_one
REM setlocal
REM
REM     echo     Running 'add_one"...
REM
REM endlocal & set /a %~1=%~2 + 1
REM goto :eof
REM
REM :main
REM setlocal
REM         
REM         set /a x=1
REM
REM         set /a y=50
REM         echo created variable X = %x% and Y = %y%
REM         echo.
REM
REM         call :add_one y %y%
REM         echo.
REM         echo The value of Y is now %y%
REM
REM         echo.
REM         echo.
REM         
REM         call :add_one x %x%
REM         echo.
REM         echo The value of X is now %x%
REM     
REM endlocal
REM goto :eof


REM -----------------------------------------
REM if statement
REM  

goto :main

:main
setlocal
        
        echo Hello World!
        echo.

        set /a food=10
        set /a  needed_food=20

        if %food% == %needed_food% (
            echo We have enough food
        )

        echo.
        echo Goodbye World!

endlocal
goto :eof
