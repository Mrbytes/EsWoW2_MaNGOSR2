@ECHO OFF
TITLE Utilidad de actualizacion Eswow2ฉ
COLOR 1B
SET rev=01


:inicio
CLS
echo.
echo  888888b  .d8888b. Y8b      d8Y      Y8b      d8Y .d8888b.  ฉ
echo  888     d88P  Y88b Y8b db d8Y        Y8b db d8Y d88P""Y88b
echo  888     Y88b.       Y888888Y .d8888b. Y888888Y         888
echo  888888D  "Y888b      Y8''8Y d88P""Y88b Y8''8Y         d88"
echo  888         "Y88b.          888    888              .d88"
echo  888           "888  WOTLK   888    888  REV. %rev%   .d888"
echo  888     Y88b..d88P MaNGOSR2 Y88b..d88P          .d888"
echo  8888888P "Y8888P"            "Y8888P"           d88888888b          
echo.
ECHO  --------------------- IMPORTANTE --------------------------
ECHO  Tu DB debe tener CHARACTER SET utf8 COLLATE utf8_general_ci
ECHO           Esta Rev est  basada en la DB de YTDB
ECHO  -----------------------------------------------------------
ECHO   Por favor introduce los datos relativos a tu Mysql DB,
ECHO   ข, pulsa intro si los que hay entre [ ] son correctos.
echo.
set /p host=จCual es el nombre del host MySQL?       [localhost]   : 
if %host%. == . set host=localhost
set /p user=จCual es el nombre del usuario MySQL?    [root]        : 
if %user%. == . set user=root
set /p pass=จCual es el password de MySQL?           [ ]           : 
if %pass%. == . set pass=
set /p port=จCual es el puerto de MySQL?             [3306]        : 
if %port%. == . set port=3306
echo --------------------------------------------------------------------------------
set /p world_db=จCual es el nombre de la DB World?       [ ]           : 
if %world_db%. == . set world_db=world
set /p sd2_db=จCual es el nombre de la DB scriptdev2?  [scriptdev2]  : 
if %sd2_db%. == . set sd2_db=scriptdev2

SET dbsqlm=.\stashMR2\
SET dbsqls=.\stashSR2\
SET rutamysql=.\mysql\
SET rutamangos=.\mangosR2\
SET mangossd2=.\scriptdevR2\
SET volcado=.\volcado\
SET volcadom=.\volcado\mangosR2\
SET volcados=.\volcado\scriptdevR2\

IF NOT EXIST "%volcadom%" MKDIR %volcadom%
IF NOT EXIST "%volcadow%" MKDIR %volcadow%

:opciones
CLS
SET O=""
ECHO.
ECHO   ษออออออออออออออออออออออออออออออออป
ECHO   บ                                บ
ECHO   บ     Opciones del Instalador    บ
ECHO   บ                                บ
ECHO   ศออออออออออออออออออออออออออออออออผ
ECHO.
ECHO    M - Instalar la revisiขn %rev% para MaNGOSR2.
ECHO.
ECHO    V - Crear un volcado de las Bases de Datos.
ECHO.
ECHO    R - Revertir volcado de las Bases de Datos -
ECHO                 o insertar FIX.
ECHO.     
ECHO    C - Cambiar ajustes iniciales.
ECHO.
ECHO    S - Salir de esta Utilidad.
ECHO.
ECHO    Es aconsejable que hagas un volcado de tus DB
ECHO    antes de iniciar el proceso de actualizaciขn.
ECHO.
SET /p O= 	Introduce una Letra: 
IF %O%==m GOTO mangosdb
IF %O%==M GOTO mangosdb
IF %O%==v GOTO wvolcado
IF %O%==V GOTO wvolcado
IF %O%==r GOTO rvolcado
IF %O%==R GOTO rvolcado
IF %O%==c GOTO inicio
IF %O%==C GOTO inicio
IF %O%==s GOTO salir
IF %O%==S GOTO salir
IF %O%=="" GOTO opciones
GOTO error


:mangosdb
CLS
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออป
ECHO  บ                                         บ
ECHO  บ   Actualizando MaNGOSR2 + scriptdevR2   บ
ECHO  บ                                         บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO Proceso en marcha ten paciencia...
ECHO.
FOR %%C IN (%rutamangos%\*.sql) DO (
	ECHO Actualizando: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
FOR %%C IN (%mangossd2%\*.sql) DO (
	ECHO Actualizando: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %sd2_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
ECHO.
ECHO El proceso se ha completado, revisa si hay errores.
ECHO.
ECHO    Tu DB deberกa estar actualizada a la rev %rev%.
ECHO.
ECHO ----------------- Eswow2ฉ_MaNGOSR2 -----------------
ECHO.
ECHO.
PAUSE
GOTO opciones


:wvolcado
CLS
IF NOT EXIST "%volcado%" MKDIR %volcado%
IF NOT EXIST "%volcadom%" MKDIR %volcadom%
ECHO.
ECHO  ษออออออออออออออออออออออออออออออออออป
ECHO  บ                                  บ
ECHO  บ    Volcado de la DB MaNGOSR2     บ
ECHO  บ                                  บ
ECHO  ศออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO  Se esta salvando %world_db% ten paciencia...

FOR %%a IN ("%dbsqlm%\*.sql") DO SET /A Count+=1
setlocal enabledelayedexpansion
FOR %%C IN (%dbsqlm%\*.sql) DO (
	SET /A Count2+=1
	ECHO Volcando [!Count2!/%Count%] %%~nC
	%rutamysql%\mysqldump --host=%host% --user=%user% --password=%pass% --port=%port% --routines --skip-comments %world_db% %%~nC > %volcadom%\%%~nxC
)
endlocal 
IF NOT EXIST "%volcados%" MKDIR %volcados%
ECHO.
ECHO  Se esta salvando %sd2_db% ten paciencia...
FOR %%a IN ("%dbsqls%\*.sql") DO SET /A Count3+=1
setlocal enabledelayedexpansion
FOR %%C IN (%dbsqls%\*.sql) DO (
	SET /A Count2+=1
	ECHO Volcando [!Count2!/%Count3%] %%~nC
	%rutamysql%\mysqldump --host=%host% --user=%user% --password=%pass% --port=%port% --routines --skip-comments %sd2_db% %%~nC > %volcados%\%%~nxC
)
endlocal
ECHO  %world_db% y %sd2_db% se han salvado en la carptera %volcado%
ECHO.
ECHO  -------------- Volcadas las tablas de MaNGOSR2 --------------
ECHO.
PAUSE
SET /A Count=0
SET /A Count2=0
SET /A Count3=0
GOTO opciones


:rvolcado
IF NOT EXIST "%volcado%" GOTO error10
CLS
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออป
ECHO  บ                                         บ
ECHO  บ       Revertir volcado de MaNGOS        บ
ECHO  บ            o Insertando FIX             บ
ECHO  บ                                         บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO  Proceso en marcha ten paciencia...
ECHO  Si es un FIX atento al siguiente mensaje -
ECHO         - FIX.sql se ha completado
ECHO.
FOR %%C IN (%volcadom%\*.sql) DO (
	ECHO Restituyendo: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha completado 
	ECHO --------------------------------------------------
)
FOR %%C IN (%volcados%\*.sql) DO (
	ECHO Restituyendo: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %sd2_db% < "%%~fC"
	ECHO %%~nxC se ha completado 
	ECHO --------------------------------------------------
)
ECHO.
ECHO El proceso se ha completado, revisa si hay errores.
ECHO.
ECHO.
ECHO --------- Restituidas las tablas de MaNGOSR2 ---------
ECHO.
PAUSE
GOTO opciones


:error
ECHO	Por favor introduce la letra correcta.
ECHO.
PAUSE
GOTO opciones


:error10
ECHO	No se ha realizado ningฃn volcado de la DB.
ECHO.
PAUSE
GOTO opciones

:salir
CLS
ECHO.
ECHO	 Staff de Eswow2ฉ:
ECHO ===================================================
ECHO	    Gravitaferro
ECHO	        Trargos
ECHO	             Mrbytes
ECHO	                  Durotar
ECHO.	                    
EcHO.
ECHO	 Miembros retirados del Staff, veteranos de guerra.
ECHO - - - - - - - - - - - - - - - - - - - - - - - - - -
ECHO	    Eragon - Nomad
ECHO.
ECHO.
ECHO	 Y nuestro agradecimiento al precursor.
ECHO	                                         CrazyEs
ECHO.
ECHO	      --- Gracias por confiar en Eswow2ฉ ---
ECHO.
PAUSE