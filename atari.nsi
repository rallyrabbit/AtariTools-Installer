; Adam Oldham
;
; Installer for my default batch of gnuwin32 stuff that I typically put on my computers
;
; Installer
; Uninstaller
; Windows Uninstaller from Add/Remove Programs
; Adds Path/Removes Path
;
; Uses the EnVar plugin
; https://nsis.sourceforge.io/EnVar_plug-in

;--------------------------------

; Baselines
!define INSTALLSIZE 18180
!define VERS "v1.2"
!define PRODUCT "CAO/Atari Tools"

; The name of the installer
Name "CAO/Atari Tools"

; The file to write
OutFile "atari-tools.exe"

; Request application privileges for Windows Vista
RequestExecutionLevel admin

; Build Unicode installer
Unicode True

; The default installation directory
InstallDir $PROGRAMFILES\AtariTools

; Show details by default
ShowInstDetails show

;--------------------------------

; Pages
;Page instfiles
;UninstPage uninstConfirm

;--------------------------------

; The stuff to install
Section "" ;No components page, name is not important

  ; Set output path to the installation directory.
  SetOutPath $INSTDIR
  
  SetOutPath $INSTDIR\Dasm
  File /r Dasm\*.*

  SetOutPath $INSTDIR\Others
  File /r Others\*.*

  SetOutPath $INSTDIR\Stella
  File /r Stella\*.*

  WriteUninstaller $INSTDIR\uninstall.exe

  ; Create the 32-bit register area stuff for Add/Remove programs
  SetRegView 32
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\AtariTools" "DisplayName" "${PRODUCT}"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\AtariTools" "DisplayVersion" "${VERS}"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\AtariTools" "Publisher" "Adam Oldham"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\AtariTools" "UninstallString" '"$INSTDIR\uninstall.exe"'

  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\AtariTools" "QuietUninstallString" "$\"$INSTDIR\uninstall.exe$\" /S"
  ; There is no option for modifying or repairing the install
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\AtariTools" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\AtariTools" "NoRepair" 1
  # Set the INSTALLSIZE constant (!defined at the top of this script) so Add/Remove Programs can accurately report the size
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\AtariTools" "EstimatedSize" ${INSTALLSIZE}

  ; Set Envar Plugin to HKey Current User in Registry
  EnVar::SetHKCU
;  DetailPrint "EnVar::SetHKCU"

  EnVar::AddValue "Path" "$INSTDIR\Dasm"
;  Pop $0
;  DetailPrint "EnVar::AddValue returned=|$0|"

  EnVar::AddValue "Path" "$INSTDIR\Others"
;  Pop $0
;  DetailPrint "EnVar::AddValue returned=|$0|"

  EnVar::AddValue "Path" "$INSTDIR\Stella"
;  Pop $0
;  DetailPrint "EnVar::AddValue returned=|$0|"

SectionEnd ; end the section
 
Section "Uninstall"
  Delete $INSTDIR\Uninstall.exe ; delete self (see explanation below why this works)
  RMDir /r $INSTDIR

  ; Remove the 32-bit register area stuff for Add/Remove programs
  SetRegView 32
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\AtariTools"
  
  ;
  ; Set Envar Plugin to HKey Current User in Registry
  EnVar::SetHKCU
;  DetailPrint "EnVar::SetHKCU"

  EnVar::DeleteValue "Path" "$INSTDIR\Dasm"
;  Pop $0
;  DetailPrint "EnVar::AddValue returned=|$0|"

  EnVar::DeleteValue "Path" "$INSTDIR\Others"
;  Pop $0
;  DetailPrint "EnVar::AddValue returned=|$0|"

  EnVar::DeleteValue "Path" "$INSTDIR\Stella"
;  Pop $0
;  DetailPrint "EnVar::AddValue returned=|$0|"
SectionEnd
