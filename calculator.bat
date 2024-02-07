@echo off

goto :main


:sum
setlocal

        

endlocal & set /a %~1=%~2 + %~3
goto :eof

:disclaimer

        echo.
        echo.
        echo choose any of the following operations:
        echo .
        echo 1. Add
        echo 2. Subtract
        echo 3. Multiply
        echo 4. Divide
        echo 5. Mod
        echo.
        echo.

goto :eof

:main
setlocal
        cls
        echo        Welcome to Mr. Calculator's Program...
        echo.
        echo.
        call :disclaimer
        set /p o=enter value:
        set /a op=o
        cls
        echo Input 2 numbers to be operated upon...
        echo.
        echo.


        set /p x=number one: 
        set /a a=x
        echo.
        echo.
        set /p y=number two:
        set /a b=y

        if %op% == 1 (
            set /a sum=0
            call :sum sum a b
            echo %sum%
        )



endlocal
goto :eof
