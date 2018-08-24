powershell "Get-EventLog system -After (Get-Date).addmonths(-1)|? { $_.eventid -eq '6006' }"

pause
