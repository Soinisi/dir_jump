param (
    [string[]]$arguments
)
$argumentString = $arguments -join ' '
$directory = & python.exe "C:\Users\simo\projects\python\dir_jump\dj.py" $argumentString

Set-Location -Path $directory
