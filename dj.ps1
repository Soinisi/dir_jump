param (
    [string]$argument
)
$directory = & python.exe "C:\Users\simo\projects\python\dir_jump\dj.py" $argument
Set-Location -Path $directory
