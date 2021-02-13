Get-Date
Get-Date -DisplayHint Date
Get-Date -Format "dddd MM/dd/yyyy HH:mm K"
Get-Date -UFormat "%A %m/%d/%Y %R %Z"

# --------------------------------------------------------------------------------------
# Get-Date uses the UFormat parameter to specify several format specifiers.
# The UFormat format specifiers used in this example are defined as follows:
# %A	Day of the week - full name
# %m	Month number
# %d	Day of the month - 2 digits
# %Y	Year in 4-digit format
# %R	Time in 24-hour format - no seconds
# %Z	Time zone offset from Universal Time Coordinate (UTC)
# --------------------------------------------------------------------------------------

(Get-Date -Year 2021 -Month 01 -Day 13).DayOfYear
# boolean method to verify if a date is adjusted by daylight savings time.
$DST = Get-Date
$DST.IsDaylightSavingTime()
# convert the current time to UTC time
Get-Date -UFormat "%A %B/%d/%Y %T %Z"
$Time = Get-Date
$Time.ToUniversalTime()
# create a timestamp
$timestamp = Get-Date -Format o | ForEach-Object { $_ -replace ":", "." }
# New-Item -Path .\$timestamp -Type Directory
$timestamp
