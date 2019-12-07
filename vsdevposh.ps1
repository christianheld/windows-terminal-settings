$vswhere = "${env:ProgramFiles(x86)}\Microsoft Visual Studio\Installer\vswhere.exe"
$vsInfos = (& $vswhere -format json) | ConvertFrom-Json
$vsInfo = $vsInfos[0]

Import-Module "$($vsInfo.installationPath)\Common7\Tools\Microsoft.VisualStudio.DevShell.dll"
Enter-VsDevShell $vsInfo.instanceId

