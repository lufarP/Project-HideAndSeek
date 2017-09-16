@ echo off
title ::CHANGE EXTENSION::
:ask
	cls
	echo enter &echo y to change file extension &echo n to exit
	set /p "cho=>"
	if %cho%==y  goto change
	if %cho%==Y  goto change
	if %cho%==n  goto exit
	if %cho%==N  goto exit
	echo invalid choice
	goto ask
:change 
	echo from(extension)
	set /p "from=>"
	echo to(extension)
	set /p "to=>"
	for /R %%x in (*.%from%) do ren "%%x" *.%to%
	echo success
	pause
	goto ask
:end

