try {
    Get-Content -Path "/Users/mandeepbisht/Downloads" -ErrorAction Stop
    "File read successfully"
}
catch {
    "Error occurred: $($_.Exception.Message)"
}
finally {
    "Cleanup actions go here"
}