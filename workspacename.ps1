param (
    # WorkSpaceName
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [System.Object] $WorkSpaceName
)

Write-Output "The WorkspaceName is: $WorkSpaceName"
