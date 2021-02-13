Write-Host `n'waves'`n
Start-Sleep -Milliseconds 1000
$colors = @("Green","Cyan","Red","Magenta","Yellow","White")
$x=''
$count = 1

DO 
{
for (($fgcolor = $colors | Get-Random); $x.length -le 30; ($x=$x+'x'), ($fgcolor = $colors | Get-Random)){
    Write-Host $x -ForegroundColor $fgcolor
    Start-Sleep -Milliseconds 20
}
for (($fgcolor = $colors | Get-Random); $x.length -gt 1; ($x = $x.Substring(0,$x.Length-1)), ($fgcolor = $colors | Get-Random)){
    Write-Host $x -ForegroundColor $fgcolor
    Start-Sleep -Milliseconds 20
}
$count = $count + 1
} While ($True)