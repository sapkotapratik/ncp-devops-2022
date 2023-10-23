# param (
#     # WorkSpaceName
#     [Parameter(Mandatory = $true)]
#     [ValidateNotNullOrEmpty()]
#     [System.Object] $WorkSpaceName
# )

# extract.ps1
$pratik = $env:Synpase_workspace_List | ConvertFrom-Json

# From here you can work with $pratik
Write-Output $pratik.SynapseWorkspaceName

