# Advanced commandos

|Command|Option|Description|
|--------|------|-----------|
|Set-Alias || hiermee kan je aliassen aanmaken of wijzigen|
|Export-Csv || hiermee stuur je iets door naar een csv (comma-seperated value)- bestand|
|Export-Clixml || hiermee stuur je iets naar een xml-bestand|
|Out-File || hiermee genereer je de output naar een nieuw venster|
|Out-GridView || hiermee krijg je een grid waarin er kan worden gesorteerd met behulp van een venster|
|.\ || hiermee kan je een script uitvoeren in de PowerShell zelf|
|Get-ExecutionPolicy || hiermee kan je de policy achterhalen die ingesteld is, de mogelijkheden zijn Restricted, Allsigned, RemoteSigned, Unrestricted|
|Set-ExecutionPolicy || hiermee kan je de policy instellen, de mogelijkheden zijn Restricted, Allsigned, RemoteSigned, Unrestricted|
|Powershell.exe –noexit || hiermee kan je een script uitvoeren in de command line|
|Function { } || hiermee beschrijf je een functie|
|Read-Host || hiermee kan je input vragen van een gebruiker|
|Write-Host || hiermee kan je iets op het scherm laten verschijnen|
|$variabele = waarde || hiermee ken je een bepaalde waarde toe aan een variabele|
|‘ ‘ (enkele aanhalingstekens) || alles wat hiertussen staat wordt letterlijk gereproduceerd op het scherm|
|“ “ (dubbele aanhalingstekens) || hier worden de waarden van de variabele eerst ingelezen en daarna niet geüpdatet|
|Start-Process iexplore || hiermee kan een bepaalde website met Internet Explorer geopend worden|
|ConvertTo-Html || hiermee wordt naar een .html-file weggeschreven|
|Compare-Object || hiermee vergelijk je bestanden en/of output met elkaar|
|`-teken (backtick) || als je dit gebruikt als escape teken, vertel je PowerShell dat de variabele niet als variabele gelezen moet worden, maar als exacte tekst|
|Dir Variable || geef je een lijst van de standaard aanwezige en zelfgemaakte variabelen|
|Del Variable 'pipe' Remove-Variable -Name || hiermee verwijder je een variabele|
|[declaratie]$variabele || declareren van een variabele, mogelijke declaraties zijn Int, Long, String, Byte, Bool, Decimal|
|If(conditie){if actie}[optioneel]elseif(conditie){elseif actie}[optioneel]else{else actie} || met deze conditie kan je keuzes maken in je commando’s en scripts. Mogelijke condities: -eq; -lt; -gt; -le; -ge; -like;|
|help about-if || hiermee krijg je hulp ivm de if-conditie|
|Switch ($variabele) { 1{statement1} 2{statement2} ... default {} }|| een constructie om controles uit te voeren, break kan gebruikt worden om uit de switch te komen zonder alle andere waarden te evalueren|
|Do {actie} until (conditie) || hiermee kan je een gepast aantal uitvoeringen doen of een actie wordt uitgevoerd totdat de conditie is bereikt|
|Do {actie} while (conditie) || hiermee wordt een actie uitgevoerd zolang de conditie waar is|
|; || hiermee kan je expressie na elkaar zetten|
|For (conditie){actie} || hiermee zal de actie uitgevoerd worden zolang de conditie waar is|
|Foreach (item IN set){actie} ||hiermee wordt voor elke individueel item van de set een iteratie uitgevoerd|
|Test-Path || hiermee kan je testen of een bestand bestaat|
|Function naam($arg1,$arg2){actie;return $output} || hiermee kan je een stukje code met de naam laten uitvoeren, waarbij je 2 argumenten meegeeft waarop de code zal toegepast worden en het resultaat in $output terug zal gestuurd worden|
|$variabele = New-Object –comobject Comapp.application || hiermee definiëren we een COM-object|
|New-Object || hiermee creeër je nieuwe objecten|
|-comobject || duid aan dat het om een COM(Component Object Model)-object gaat|