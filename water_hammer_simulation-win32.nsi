!define APPNAME "Water Hammer Simulation"
!define COMPANYNAME "hafsoftdz"
!define DESCRIPTION "With different numerical methods this application simulate the Water Hammer phenomenon."
# These three must be integers
!define VERSIONMAJOR 4
!define VERSIONMINOR 7
!define VERSIONBUILD 1
# These will be displayed by the "Click here for support information" link in "Add/Remove Programs"
# It is possible to use "mailto:" links in here to open the email client
!define HELPURL "https://sites.google.com/site/courshaf" # "Support Information" link
!define UPDATEURL "https://sites.google.com/site/courshaf" # "Product Updates" link
!define ABOUTURL "https://sites.google.com/site/courshaf" # "Publisher" link
# This is the size (in kB) of all the files copied into "Program Files"
!define INSTALLSIZE 33504.95


Name "${COMPANYNAME} - ${APPNAME}"
Icon "water_hammer_simulation.ico"

OutFile "water_hammer_simulation_win32_install_4.7.1.exe"

Icon "water_hammer_simulation.ico"
UninstallIcon "water_hammer_simulation.ico"


DirText "Uninstall previous version if exist and Choose directory for installing (Water Hammer Simulation) Ver 4.7.1/15-3-2024"

InstallDir "$PROGRAMFILES\water_hammer_simulation"

Section "Install"
  SetOutPath $INSTDIR
  File "C:\Qt\5.15.2\mingw81_32\bin\libgcc_s_dw2-1.dll"
  File "C:\Qt\5.15.2\mingw81_32\bin\libstdc++-6.dll"
  File "C:\Qt\5.15.2\mingw81_32\bin\libwinpthread-1.dll"
  File "C:\Qt\5.15.2\mingw81_32\bin\Qt5Core.dll"
  File "C:\Qt\5.15.2\mingw81_32\bin\Qt5Gui.dll"
  File "C:\Qt\5.15.2\mingw81_32\bin\Qt5PrintSupport.dll"
  File "C:\Qt\5.15.2\mingw81_32\bin\Qt5Widgets.dll"
CreateDirectory $INSTDIR\platforms
SetOutPath $INSTDIR\platforms
  File "C:\Qt\5.15.2\mingw81_32\plugins\platforms\qwindows.dll"
SetOutPath $INSTDIR 
 File "..\CompilationWin\release\water_hammer_simulation.exe"
 File "water_hammer_simulation.ico"

 # WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\water_hammer_simulation" "DisplayName" "water_hammer_simulation"
#  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\water_hammer_simulation" "UninstallString" "$INSTDIR\uninstall.exe"
 WriteUninstaller "uninstall.exe"



# Registry information for add/remove programs
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayName" "${APPNAME} - ${DESCRIPTION}"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "UninstallString" "$\"$INSTDIR\uninstall.exe$\""
	#WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "QuietUninstallString" "$\"$INSTDIR\uninstall.exe$\" /S"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "InstallLocation" "$\"$INSTDIR$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayIcon" "$\"$INSTDIR\water_hammer_simulation.ico$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "Publisher" "${COMPANYNAME}"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "HelpLink" "$\"${HELPURL}$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "URLUpdateInfo" "$\"${UPDATEURL}$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "URLInfoAbout" "$\"${ABOUTURL}$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayVersion" "${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONBUILD}"
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "VersionMajor" ${VERSIONMAJOR}
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "VersionMinor" ${VERSIONMINOR}
	# There is no option for modifying or repairing the install
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "NoModify" 1
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "NoRepair" 1
	# Set the INSTALLSIZE constant (!defined at the top of this script) so Add/Remove Programs can accurately report the size
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "EstimatedSize" ${INSTALLSIZE}

SectionEnd

Section "Shortcuts"
  SetShellVarContext all
  CreateDirectory "$SMPROGRAMS\water_hammer_simulation"
  SetOutPath $INSTDIR
  CreateShortCut "$SMPROGRAMS\water_hammer_simulation\water_hammer_simulation.lnk""$INSTDIR\water_hammer_simulation.exe" "" "$INSTDIR\water_hammer_simulation.ico"
  SetOutPath $INSTDIR
  CreateShortCut "$DESKTOP\water_hammer_simulation.lnk""$INSTDIR\water_hammer_simulation.exe"
  CreateShortCut "$QUICKLAUNCH\water_hammer_simulation.lnk""$INSTDIR\water_hammer_simulation.exe"
  CreateShortCut "$SMPROGRAMS\water_hammer_simulation\uninstall_water_hammer_simulation.lnk""$INSTDIR\uninstall.exe"
SectionEnd

UninstallText "Close water_hammer_simulation if running ; This will uninstall 'Water Hammer Simulation' from your system"

Section "Uninstall"
SetShellVarContext all
#DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\water_hammer_simulation"
DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}"
Delete "$SMPROGRAMS\water_hammer_simulation\water_hammer_simulation.lnk"
Delete "$SMPROGRAMS\water_hammer_simulation\uninstall_water_hammer_simulation.lnk"
RmDir "$SMPROGRAMS\water_hammer_simulation"
Delete "$DESKTOP\water_hammer_simulation.lnk"
Delete "$QUICKLAUNCH\water_hammer_simulation.lnk"
Delete "$INSTDIR\libgcc_s_dw2-1.dll"
Delete "$INSTDIR\libstdc++-6.dll"
Delete "$INSTDIR\libwinpthread-1.dll"
Delete "$INSTDIR\Qt5Core.dll"
Delete "$INSTDIR\Qt5Gui.dll"
Delete "$INSTDIR\Qt5PrintSupport.dll"
Delete "$INSTDIR\Qt5Widgets.dll"
Delete "$INSTDIR\platforms\qwindows.dll"
RMDir $INSTDIR\platforms
Delete "$INSTDIR\water_hammer_simulation.exe"
Delete "$INSTDIR\water_hammer_simulation.ico"
Delete "$INSTDIR\uninstall.exe"
RmDir "$INSTDIR"
SectionEnd
