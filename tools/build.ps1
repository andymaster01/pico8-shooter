$p8toolPath = ".\..\..\picotool\p8tool"
$pico8Path = "d:\apps\pico-8\pico8.exe"


$inputFile = "code\shooter.lua"
$cartFile = "pico8-home\carts\shooter.p8"

$picoHome = "$($PSScriptRoot)\..\pico8-home"


function build(){
    Write-Output $PSScriptRoot
    Write-Output "Building..."
    python $p8toolPath "build" $cartFile "--lua" $inputFile
    Write-Output "Done with $($cartFile)"
}

function run(){
    Write-Output "Running $($cartFile) ..."
    Write-Output "Home is $($picoHome)"
    &$pico8Path "-run" $cartFile "-home" $picoHome
}


$type = $args[1]

if($type -eq "build"){
    build
}
elseif($type -eq "run"){
    run
}
elseif($type -eq "build-and-run"){
    build
    run
}
else {
    Write-Output "unknown"
}

