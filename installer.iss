; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6091F327-2B13-4193-A6F1-4B2271613A74}
AppName=Feed Notifier
AppVerName=Feed Notifier 2.6
AppPublisher=Michael Fogleman
AppPublisherURL=http://www.feed-notifier.com/
AppSupportURL=http://www.feed-notifier.com/
AppUpdatesURL=http://www.feed-notifier.com/
DefaultDirName={pf}\Feed Notifier
DefaultGroupName=Feed Notifier
AllowNoIcons=yes
OutputDir=installer
OutputBaseFilename=feed-notifier-2.6
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "startupicon"; Description: "Run Feed Notifier on Startup"; GroupDescription: "Additional tasks:";
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]
Type: filesandordirs; Name: "{app}\images"
Type: files; Name: "{app}\msvcp71.dll"
Type: files; Name: "{app}\MSVCR71.dll"
Type: files; Name: "{app}\notifier.exe.manifest"

[Dirs]
Name: "{app}"; Permissions: everyone-modify

[Files]
Source: "dist\notifier.exe"; DestDir: "{app}"; Flags: ignoreversion; Permissions: everyone-readexec
Source: "dist\w9xpopen.exe"; DestDir: "{app}"; Flags: ignoreversion; Permissions: everyone-readexec
Source: "dist\library.zip"; DestDir: "{app}"; Flags: ignoreversion; Permissions: everyone-readexec
Source: "dist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Feed Notifier"; Filename: "{app}\notifier.exe"; WorkingDir: "{app}";
Name: "{group}\{cm:UninstallProgram,Feed Notifier}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Feed Notifier"; Filename: "{app}\notifier.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Feed Notifier"; Filename: "{app}\notifier.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon
Name: "{userstartup}\Feed Notifier"; Filename: "{app}\notifier.exe"; WorkingDir: "{app}"; Tasks: startupicon

[Run]
Filename: "{app}\notifier.exe"; Description: "{cm:LaunchProgram,Feed Notifier}"; Flags: nowait postinstall


