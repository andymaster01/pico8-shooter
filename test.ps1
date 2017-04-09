$p8toolPath = ".\..\..\picotool\p8tool"
$pico8Path = "d:\apps\pico-8\pico8.exe"

$type = $args[1]

if($type -eq "build"){
    Write-Output "is build"
    python $p8toolPath "stats" "shooter.p8"
}
elseif($type -eq "run"){
    Write-Output "is run"
    &$pico8Path "-run" ".\shooter.p8"
}
else {
    Write-Output "unknown"
}