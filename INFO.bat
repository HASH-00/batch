:: debut                                                                                         

CLS
@ECHO OFF
TITLE MY SYSTEME INFO
color f0

:0
color F0
ECHO **************************************************************************************
ECHO ********************************SYSTEME_INFO******************************************
ECHO **************************************************************************************

:: Si certaines commandes ne s'execute pas verifier votre connexion internet

ECHO.
ECHO CE PROGRAMME A ETAIT DEVELOPPER PAR HASH    
ECHO (insta: nicoss_05)
ECHO.
ECHO  ===================================================================
ECHO.
ECHO                 MENU
ECHO  VERSION                        [1]  PC               [2]
ECHO  VOLUME                         [3]  SYSTEME          [4]
ECHO  ADRESSE IP                     [5]  CONFIGURATION IP [6]
ECHO  AFFICHER LES PACKAGE INSTALLER [7]  TOUT AFFICHER    [8] 
ECHO  COPIER INFO                    [9]  QUITTER          [X]
ECHO  ===================================================================

echo Que voulez vous faire ?
choice /c 123456789X /n
if %errorlevel%==X goto X
if %errorlevel%==9 goto 9
if %errorlevel%==8 goto 8
if %errorlevel%==7 goto 7
if %errorlevel%==6 goto 6
if %errorlevel%==5 goto 5
if %errorlevel%==4 goto 4
if %errorlevel%==3 goto 3
if %errorlevel%==2 goto 2
if %errorlevel%==1 goto 1

:1
color 80

ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO VERSION 
ECHO ===============================
VER
ECHO.
ECHO.
ECHO **************************************************************************************
ECHO ********************************SYSTEME_INFO******************************************
ECHO **************************************************************************************
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
CLS
GOTO 0

:2
color 80

ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO PC 
ECHO ===============================
wmic path win32_videocontroller get name
wmic cpu get name
wmic diskdrive get name,model,size
ECHO.
ECHO.
ECHO **************************************************************************************
ECHO ********************************SYSTEME_INFO******************************************
ECHO **************************************************************************************
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
CLS
GOTO 0

:3
color 80

ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO VOLUME
ECHO ===============================
VOL
ECHO.
ECHO.
ECHO **************************************************************************************
ECHO ********************************SYSTEME_INFO******************************************
ECHO **************************************************************************************
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
CLS
GOTO 0

:4
color 80

ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO SYSTEME 
ECHO ===============================
systeminfo
ECHO.
ECHO.
ECHO **************************************************************************************
ECHO ********************************SYSTEME_INFO******************************************
ECHO **************************************************************************************
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
CLS
GOTO 0

:5
color 80

ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO ADRESSE IP
ECHO ===============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ECHO.
ECHO.
ECHO **************************************************************************************
ECHO ********************************SYSTEME_INFO******************************************
ECHO **************************************************************************************
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
CLS
GOTO 0

:6
color 80

ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO CONFIGURATION IP
ECHO ===============================
ipconfig /all
ECHO.
ECHO.
ECHO **************************************************************************************
ECHO ********************************SYSTEME_INFO******************************************
ECHO **************************************************************************************
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
CLS
GOTO 0

:7
color 80

ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO AFFICHER LES PACKAGE INSTALLER
ECHO ===============================
:: c'est normal si la commende mais du temps a s'executer
winget list
color 80
ECHO.
ECHO.
ECHO **************************************************************************************
ECHO ********************************SYSTEME_INFO******************************************
ECHO **************************************************************************************
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
CLS
GOTO 0


:8
color 80

ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO VERSION 
ECHO ===============================
VER
ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO PC 
ECHO===============================
wmic path win32_videocontroller get name
wmic cpu get name
wmic diskdrive get name,model,size
ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO VOLUME
ECHO ===============================
VOL
ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO SYSTEME 
ECHO ===============================
systeminfo
ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO ADRESSE IP
ECHO ===============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO CONFIGURATION IP
ECHO ===============================
ipconfig /all
ECHO __________________________________________________________________________________________________________________
ECHO ===============================
ECHO AFFICHER LES PACKAGE INSTALLER
ECHO ===============================
winget list
color 80
ECHO.
ECHO.
ECHO **************************************************************************************
ECHO ********************************SYSTEME_INFO******************************************
ECHO **************************************************************************************
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
CLS
GOTO 0

:9
CLS
color f0
ECHO  ===================================================================
ECHO.
ECHO                 MENU COPIER
ECHO   COPIER VERSION                  [1]  COPIER PC               [2]
ECHO   COPIER  VOLUME                  [3]  COPIER SYSTEME          [4]
ECHO   COPIER ADRESSE IP               [5]  COPIER CONFIGURATION IP [6]
ECHO   COPIER LES PACKAGE INSTALLER    [7]  TOUT COPIER             [8] 
ECHO   QUITTER                         [9]
ECHO  ===================================================================
ECHO Que voulez vous copier ? 

:: Les fichiers seront copier dans le meme dossier ou se trouve INFO.BAT

choice /c 123456789 /n
if %errorlevel%==9 goto COPY9
if %errorlevel%==8 goto COPY8
if %errorlevel%==7 goto COPY7
if %errorlevel%==6 goto COPY6
if %errorlevel%==5 goto COPY5
if %errorlevel%==4 goto COPY4
if %errorlevel%==3 goto COPY3
if %errorlevel%==2 goto COPY2
if %errorlevel%==1 goto COPY1

:COPY1
color 80
ECHO ************************************************************************************** >> VERSION.txt
ECHO ********************************SYSTEME_INFO****************************************** >> VERSION.txt
ECHO ************************************************************************************** >> VERSION.txt
ECHO __________________________________________________________________________________________________________________ >> VERSION.txt
echo VERSION >> VERSION.txt
ver >> VERSION.txt 
ECHO VERSION a etait copier dans VERSION.txt
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
goto 9

:COPY2
color 80
ECHO ************************************************************************************** >> PC.txt
ECHO ********************************SYSTEME_INFO****************************************** >> PC.txt
ECHO ************************************************************************************** >> PC.txt
ECHO __________________________________________________________________________________________________________________ >> PC.txt
echo PC >> PC.txt
wmic path win32_videocontroller get name >> PC.txt
wmic cpu get name >> PC.txt
wmic diskdrive get name,model,size >> PC.txt
ECHO PC a etait copier dans PC.txt
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
goto 9

:COPY3
color 80
ECHO ************************************************************************************** >> VOLUME.txt
ECHO ********************************SYSTEME_INFO****************************************** >> VOLUME.txt
ECHO ************************************************************************************** >> VOLUME.txt
ECHO __________________________________________________________________________________________________________________ >> VOLUME.txt
echo VOLUME >> VOLUME.txt
vol >> VOLUME.txt
ECHO VOLUME a etait copier dans VOLUME.txt
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
goto 9

:COPY4
color 80
ECHO ************************************************************************************** >> SYSTEME.txt
ECHO ********************************SYSTEME_INFO****************************************** >> SYSTEME.txt
ECHO ************************************************************************************** >> SYSTEME.txt
ECHO __________________________________________________________________________________________________________________ >> SYSTEME.txt
echo SYSTEME >> SYSTEME.txt
systeminfo >> SYSTEME.txt
ECHO SYSTEME a etait copier dans SYSTEME.txt
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
goto 9

:COPY5
color 80
ECHO ************************************************************************************** >> ADRESSE_IP.txt
ECHO ********************************SYSTEME_INFO****************************************** >> ADRESSE_IP.txt
ECHO ************************************************************************************** >> ADRESSE_IP.txt
ECHO __________________________________________________________________________________________________________________ >> ADRESSE_IP.txt
echo ADRESSE IP >> ADRESSE_IP.txt
ipconfig | findstr IPv4 >> ADRESSE_IP.txt
ipconfig | findstr IPv6 >> ADRESSE_IP.txt
ECHO  ADRESSE IP a etait copier dans ADRESSE_IP.txt
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
goto 9

:COPY6
color 80
ECHO ************************************************************************************** >> CONFIGURATION_IP.txt
ECHO ********************************SYSTEME_INFO****************************************** >> CONFIGURATION_IP.txt
ECHO ************************************************************************************** >> CONFIGURATION_IP.txt
ECHO __________________________________________________________________________________________________________________ >> CONFIGURATION_IP.txt
echo CONFIGURATION IP >> CONFIGURATION_IP.txt
ipconfig /all >> CONFIGURATION_IP.txt
ECHO  CONFIGURATION IP a etait copier dans CONFIGURATION_IP.txt
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
goto 9

:COPY7
color 80
ECHO ************************************************************************************** >> PACKAGE_INSTALLER.txt
ECHO ********************************SYSTEME_INFO****************************************** >> PACKAGE_INSTALLER.txt
ECHO ************************************************************************************** >> PACKAGE_INSTALLER.txt
ECHO __________________________________________________________________________________________________________________ >> PACKAGE_INSTALLER.txt
echo PACKAGE INSTALLER >> PACKAGE_INSTALLER.txt
WINGET list >> PACKAGE_INSTALLER.txt
ECHO  PACKAGE INSTALLER a etait copier dans PACKAGE_INSTALLER.txt
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
goto 9

:COPY8
color 80
ECHO ************************************************************************************** >> SYSTEME_INFO.txt
ECHO ********************************SYSTEME_INFO****************************************** >> SYSTEME_INFO.txt
ECHO ************************************************************************************** >> SYSTEME_INFO.txt
ECHO __________________________________________________________________________________________________________________ >> SYSTEME_INFO.txt
echo VERSION >> SYSTEME_INFO.txt
ver >> SYSTEME_INFO.txt

echo. >> SYSTEME_INFO.txt
ECHO __________________________________________________________________________________________________________________ >> SYSTEME_INFO.txt
echo PC >> SYSTEME_INFO.txt
wmic path win32_videocontroller get name >> SYSTEME_INFO.txt
wmic cpu get name >> SYSTEME_INFO.txt
wmic diskdrive get name,model,size >> SYSTEME_INFO.txt

echo. >> SYSTEME_INFO.txt
ECHO __________________________________________________________________________________________________________________ >> SYSTEME_INFO.txt
echo VOLUME >> SYSTEME_INFO.txt
vol >> SYSTEME_INFO.txt

echo. >> SYSTEME_INFO.txt
ECHO __________________________________________________________________________________________________________________ >> SYSTEME_INFO.txt
echo SYSTEME >> SYSTEME_INFO.txt
systeminfo >> SYSTEME_INFO.txt

echo. >> SYSTEME_INFO.txt
ECHO __________________________________________________________________________________________________________________ >> SYSTEME_INFO.txt
echo ADRESSE IP >> SYSTEME_INFO.txt
ipconfig | findstr IPv4 >> SYSTEME_INFO.txt
ipconfig | findstr IPv6 >> SYSTEME_INFO.txt

echo. >> SYSTEME_INFO.txt
ECHO __________________________________________________________________________________________________________________ >> SYSTEME_INFO.txt
echo CONFIGURATION IP >> SYSTEME_INFO.txt
ipconfig /all >> SYSTEME_INFO.txt

echo. >> SYSTEME_INFO.txt
ECHO __________________________________________________________________________________________________________________ >> SYSTEME_INFO.txt
echo PACKAGE INSTALLER >> SYSTEME_INFO.txt
winget list >> SYSTEME_INFO.txt

ECHO  Tous a etait copier dans SYSTEME_INFO.txt
ECHO ENTRER POUR REVENIR AU MENU
PAUSE>NUL
goto 9

:COPY9
CLS
GOTO 0

:X
color 80

ECHO Voulez vous quittez le programme ? (O/N)
set/p "cho=>"
if %cho%==O goto END
if %cho%==o goto END
if %cho%==N goto RESTART
if %cho%==n goto RESTART

:RESTART
CLS
GOTO 0

:END
CLS
mode con cols=30 lines=10
COLOR 6D
ECHO BYE BYE
ECHO *********************
ECHO *********************
ECHO *********************
timeout /t 3 /nobreak>nul

:: fin