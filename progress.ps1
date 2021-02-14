for ($counter = 1; $counter -le 100; $counter++ ) {
    Write-Progress -Activity "Update Progress" -Status "$counter% Complete:" -PercentComplete $counter;
}