# Define the download URL and the destination
$ssmsUrl = "https://aka.ms/ssmsfullsetup"
$destination = "$env:TEMP\ssms_installer.exe"

# Download SSMS installer
Invoke-WebRequest -Uri $ssmsUrl -OutFile $destination

# Install SSMS silently
Start-Process -FilePath $destination -ArgumentList "/S" -Wait

#Remove install file
Remove-Item $destination
