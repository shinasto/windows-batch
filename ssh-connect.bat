@ECHO off

set argC=0
for %%x in (%*) do Set /A argC+=1
echo parameter count = %argC%

IF %argC% == 0 (
	ECHO ........................
	ECHO SSH servers
	ECHO ........................
	ECHO. Parameter
	ECHO     console  - connect to console server
	ECHO     c2c       - connect to c2c server
	ECHO.    ioauth   - connecto to i-oauth server
	GOTO EOF
)

IF "%1" == "console" call ssh ubuntu@11.124.102.251
IF "%1" == "c2c" call ssh ubuntu@11.124.102.252
IF "%1" == "ioauth" call ssh ubuntu@11.124.102.253
