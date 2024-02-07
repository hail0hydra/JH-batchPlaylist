
- You can run a ___.bat___ file without the extension in cmd

```cmd
C:\Users\An0n\Documents\PrtF\Language(s)\batch>first
```

<br>
<br>
<br>

- just typing in `echo` will give status of echo either __ECHO is off__ or __ECHO is on__.

<br>
<br>

---

<br>
<br>
<br>


If you use `set` with starting name of a variable, it will show all variales having that string

```cmd
C:\Users\An0n\Documents\PrtF\Language(s)\batch>set com
CommonProgramFiles=C:\Program Files\Common Files
CommonProgramFiles(x86)=C:\Program Files (x86)\Common Files
CommonProgramW6432=C:\Program Files\Common Files
COMPUTERNAME=ED1TH
ComSpec=C:\WINDOWS\system32\cmd.exe
```

<br>
<br>
<br>


### The @ symbol

<br>
<br>

- it prevents the command prompt to be displayed
---

<br>
<br>

- The `%%variable%%` will helpus escape `%` and print `%variable%` literally.

<br>
<br>

- You can create a __label__ using a `:`. It has to be the first column.


<br>
<br>
<br>

---

### Comments

<br>
<br>

- the `REM` is used for commenting but the batch interpreter reads every __REM__ line until the end, which can actually slow down the program.

- A work around is to use `::` which is a coloned label, put you might have the risk of running into this label.

---

<br>
<br>

- `goto :eof` after a main function doesn't go back to _end of file_, but to the last place of execution. (TIP: think of it as _end of function_)


<br>
<br>

- any variable within `:main` becomes a global variable and hence will be set in the terminal session calling the script.

  - But the same thing with _local scopes_ (setlocal and endlocal) would not come on to the terminal session.

  - `endlocal` acutally sort of deletes all the variables that it has seen so far.


<br>
<br>

- setting up __local scope__ makes it hard to modify a variable's value by calling a function, as it will get deleted. We can return a processed variable as follows

```cmd

@echo off

goto :main

:add_one
setlocal
    echo    Performing ADD ONE on X...

endlocal & set /a x=%x% + 1
goto :eof

:main
setlocal
    echo Main function is running...
    echo Setting X to 1...
    set /a x=1
    
    call :add_one

    echo The value of X now is %x%
endlocal
goto :eof

```

- with the `endlocal & set /a x=%x% + 1` being kind of a return statement that works fine with _local scope_.

<br>
<br>
<br>

# Some New CMDs


<br>

1. `ver` - version  of the OS.

2. `set` - shows the system Environment variables.

3. `echo:` or `echo.` - to display a newline.

4. `vol` - displays the disk volume label and serial number, if they exist.

5. `help` - provides help info about commands. commands can also be suffixed with `/?` for the same.

6. `set /a` - for expressions.

7. `set /p` - for input.

8. `goto` - to go to a label

9. `call` - to call a function

10. `%~n` - _n_ can be any number (1 tp infinity), this is how agruements in function are mentioned.

11. `setlocal` and `endlocal` - use to create a localscope area.
