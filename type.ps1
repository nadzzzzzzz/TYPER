$filePath = "input.txt"

# Read the text file
$text = Get-Content -Path $filePath -Raw

# Wait for 5 seconds
Start-Sleep -Seconds 5

# Simulate typing
Add-Type -AssemblyName System.Windows.Forms
foreach ($char in $text.ToCharArray()) {
    [System.Windows.Forms.SendKeys]::SendWait($char)
    Start-Sleep -Milliseconds 50  # Adjust typing speed
}
