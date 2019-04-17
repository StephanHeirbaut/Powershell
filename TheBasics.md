# The basics

## Basic commands
|Command|Option|Description|
|--------|------|-----------|
|Get-ChildItem || hiermee worden items opgehaald vanuit de huidige/aangeduide locatie|
|Set-Location||hiermee kan je veranderen van locatie|
|Get-Item || hiermee kunnen bestanden en mappen op de logische schijven worden opgehaald|
|Move-Item|| move file from location x to location y|
|Copy-Item|| copy file from location x to location y|
|Rename-Item|| rename file x|
|update-help |–Full krijg je veel meer info, waaronder ook voorbeelden <br>–ShowWindows wordt de help in een apart venster getoond| hiermee wordt de laatste content van het internet gehaald|
|Get-Content || hiermee lees je de inhoud van bestanden|
|clear-host || hiermee maak je je scherm leeg|
|New-Item || hiermee kun je een nieuwe file aanmaken|
|Remove-Item || hiermee kan je een bestand of een map weghalen|
|WhatIf ||kan je gebruiken om vooraf te bepalen wat er zou gebeuren indien je dit commando uitvoert, je kan hiervoor ook –Confirm gebruiken|

## Requesting help

|Command|Option|Description|
|--------|------|-----------|
|Get-Verb | -verb s* |om alle mogelijke werkwoorden die beginnen met 's' te zien|
|Get-Alias || geeft een overzicht van alle aliassen die je kan gebruiken|
|Get-Help| -full -example | hiermee krijg je meer info over het commando|
|Get-commando |-type -name| hiermee krijg je een lijst van alle beschikbare Cmdlets en functies van alle geladen modules|
|Show-Command naam_commando ||hiermee krijg je een venster waarin je de parameters en hun waarden kunt invullen|
|Get-History || hiermee kan je kijken welke commando’s je in de huidig sessie hebt gebruikt|
|Invoke-History || hiermee kun je het commando uit je geschiedenis herhalen (pijltje omhoog werkt ook)|
|Get-PSProvider || geef je een lijst van alle providers|