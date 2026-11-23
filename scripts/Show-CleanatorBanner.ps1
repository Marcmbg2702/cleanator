<#
.SYNOPSIS
    Affiche la banniere Cleanator (logo Bouclier Sain) dans la console.
.EXAMPLE
    . "$PSScriptRoot\Show-CleanatorBanner.ps1"
    Show-CleanatorBanner -Version "1.0"
#>
function Show-CleanatorBanner {
    param(
        [string]$Version = ""
    )

    $shield = @(
        '     ___________',
        '    |           |',
        '    |         / |',
        '    |   \    /  |',
        '    |    \  /   |',
        '     \    \/   /',
        '      \       /',
        "       '-._.-'"
    )
    $text = @(
        '', '', '',
        '     C L E A N A T O R',
        '     -------------------',
        '      PC protege, PC propre',
        '', ''
    )
    if ($Version) { $text[6] = "      v$Version" }

    Write-Host ""
    for ($i = 0; $i -lt $shield.Count; $i++) {
        Write-Host $shield[$i].PadRight(18) -ForegroundColor Green -NoNewline
        Write-Host $text[$i] -ForegroundColor White
    }
    Write-Host ""
}

if ($MyInvocation.InvocationName -ne '.') { Show-CleanatorBanner @args }
