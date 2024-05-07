# Assign task to be scheduled
$task = Read-Host "Enter filepath: "
$action = New-ScheduledTaskAction -Execute $task
$trigger = New-ScheduledTaskTrigger -Daily -At "12:00 PM"
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Task" -Description "will run at 12"
