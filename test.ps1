$p8toolPath = ".\..\..\picotool\p8tool"
$pico8Path = "d:\apps\pico-8\pico8.exe"

$inputFile = "shooter.lua"
$cartFile = "shooter.p8"

$type = $args[1]

if($type -eq "build"){
    Write-Output "Building..."
    python $p8toolPath "build" $cartFile "--lua" $inputFile
    Write-Output "Done with $($cartFile)"
}
elseif($type -eq "run"){
    Write-Output "Running $($cartFile) ..."
    &$pico8Path "-run" $cartFile
}
else {
    Write-Output "unknown"
}