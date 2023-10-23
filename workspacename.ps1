param (
    # WorkSpaceName
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [System.String] $WorkSpaceName
)

Write-Output "The WorkspaceName is: $WorkSpaceName"
