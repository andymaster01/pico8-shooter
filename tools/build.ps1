$p8toolPath = ".\..\..\picotool\p8tool"
$pico8Path = "d:\apps\pico-8\pico8.exe"


$inputFile = "code\shooter.lua"
$cartFile = "pico8-home\carts\shooter.p8"

$picoHome = "$($PSScriptRoot)\..\pico8-home"


$type = $args[1]

if($type -eq "build"){
    Write-Output $PSScriptRoot
    Write-Output "Building..."
    python $p8toolPath "build" $cartFile "--lua" $inputFile
    Write-Output "Done with $($cartFile)"
}
elseif($type -eq "run"){
    Write-Output "Running $($cartFile) ..."
    Write-Output "Home is $($picoHome)"
    &$pico8Path "-run" $cartFile "-home" $picoHome
}
else {
    Write-Output "unknown"
}