$p8toolPath = ".\..\..\picotool\p8tool"
$pico8Path = ".\..\..\apps\pico-8\pico8.exe"

$type = $args[1]

if($type -eq "build"){
    Write-Output "is build"
}
elseif($type -eq "run"){
    Write-Output "is run"
}
else {
    Write-Output "unknown"
}

# python $p8toolPath stats shooter.p8