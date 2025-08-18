$person = @(
    [PSCustomObject]@{FirstName = "Mandeep"; LastName = "Bisht"; Age = 30; Occupation = "Intune Engineer"; Location = "Gurugram" }
    [PSCustomObject]@{FirstName = "Nandiata"; LastName = "Bisht"; Age = 30; Occupation = "Intune Engineer"; Location = "Gurugram" }
)

$person | ForEach-Object {
    Write-Host "First Name: $($_.FirstName)"
    Write-Host "Last Name: $($_.LastName)"
    Write-Host "Age: $($_.Age)"
    Write-Host "Occupation: $($_.Occupation)"
    Write-Host "Location: $($_.Location)"
    Write-Host "-------------------------"
}