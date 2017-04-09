$p8toolPath = ".\..\..\picotool\p8tool"
$pico8Path = "d:\apps\pico-8\pico8.exe"

$p8File = "shooter.p8"

$type = $args[1]

if($type -eq "build"){
    Write-Output "is build"
    python $p8toolPath "stats" $p8File
}
elseif($type -eq "run"){
    Write-Output "is run"
    &$pico8Path "-run" $p8File
}
else {
    Write-Output "unknown"
}