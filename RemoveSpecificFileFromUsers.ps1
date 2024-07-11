$users = Get-ChildItem -Path "C:\Users"

foreach($user in $users){
  $path = "C:\Users\$($user.name)\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
    if(test-path $path){
        Remove-Item -Path "C:\Users\$($user.name)\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\start.bat" -Force
        Remove-Item -Path  C:\Users\$($user.name)\AppData\Local\remove_appx.ps1 -Force

        }
}