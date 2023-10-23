$sequence_code = "syn"
$app_env = "dev"
Write-Verbose "Looking for a synapse workspace name which contains $sequence_code and $app_env"
$SynapseWorkspace = Get-AzSynapseWorkspace | Where-Object {($_.Name -match "$sequence_code") -and ($_.Name -match "$app_env-")}


$myout = [PSCustomObject]@{
    SynapseWorkspaceName = $SynapseWorkspace.Name
}

Write-Output $myout

if ($myout)
{
     $myout_json = ConvertTo-Json -InputObject $myout -Compress
   Write-Host "Debug: $myout_json"
   "Synpase_workspace_List=$myout_json" | Out-File -FilePath $Env:GITHUB_ENV -Append
}
else
{
    Write-Error "Couldn't find a SynapseWorkspaceName name which contains $sequence_code and $app_env" -ErrorAction Stop
}
