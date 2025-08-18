$person = [PSCustomObject]@{
    FirstName  = "Mandeep"
    LastName   = "Bisht"
    Age        = 30
    Occupation = "Intune Engineer"
    Location   = "Gurugram"
}

$person.FirstName
"Full Name: $($person.FirstName) $($person.LastName)"