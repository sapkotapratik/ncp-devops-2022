param (
    # WorkSpaceName
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string] $WorkSpaceName
)

Write-Output "The WorkspaceName is: $WorkSpaceName"
