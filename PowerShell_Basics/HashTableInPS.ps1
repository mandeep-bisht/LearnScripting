# Create a hashtable
$myHashTable = @{
    "Name"     = "Mandeep"
    "Role"     = "Intune Engineer"
    "Location" = "Gurugram"
}

# Display
# $myHashTable
# #$myHashTable.GetType()
# $myHashTable["Name"]

foreach ($i in $myHashTable) {
    $i.Keys
    $i.Values
}