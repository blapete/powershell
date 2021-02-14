$minutes = 5

for ($minutes--; $minutes -gt -1; $minutes--)
{
    for ($seconds = 59 ; $seconds -gt -1 ; $seconds--)
    {
        $remaining = ("{0}:{1}" -f ("{0:d4}" -f $minutes),("{0:d2}" -f $seconds))
        Write-Host "`r$remaining" -NoNewline
        Start-Sleep -Seconds 1
    }
}