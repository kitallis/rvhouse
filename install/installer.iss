; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "RV House"
#define MyAppVerName "RV House 0.90.8"
#define MyAppPublisher "Arto Jalkanen"
#define MyAppURL "http://www.rvhouse.net"
#define MyAppExeName "rv_house.exe"

; Todo remove this for the next version, removes the old
; kadc.ini file that had stale contact nodes
;[InstallDelete]
;Type: files; Name: {app}\conf\kadc.ini

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=..\dist_files\gpl.txt
OutputBaseFilename=rv_house_setup
OutputDir=..\install.bin
Compression=lzma
SolidCompression=yes
SetupIconFile=..\dist_files\img\rv_house.ico

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: ..\build\win32\Release\rv_house.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\dist_files\pthreadGC.dll; DestDir: {sys}; Flags: onlyifdoesntexist uninsneveruninstall
Source: ..\dist_files\conf\*; DestDir: {app}\conf; Flags: ignoreversion
Source: ..\dist_files\lang\*; DestDir: {app}\lang; Flags: ignoreversion
Source: ..\dist_files\data\*; DestDir: {app}\data; Flags: ignoreversion
Source: ..\dist_files\img\*; DestDir: {app}\img; Flags: ignoreversion
Source: ..\dist_files\log\*; DestDir: {app}\log; Flags: ignoreversion
Source: ..\dist_files\doc\*; DestDir: {app}\doc; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}
Name: {userdesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent
