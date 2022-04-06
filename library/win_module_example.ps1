#!powershell
#
#Requires -Module Ansible.ModuleUtils.Legacy
#Requires -Module Ansible.ModuleUtils.Backup

$ErrorActionPreference = 'Stop'

$params = Parse-Args -arguments $args -supports_check_mode $true

$result = @{
    changed = $false
}

Function Do-Something() {
}


#$src = Get-AnsibleParam -obj $params -name "src" -type "path" -failifempty ($copy_mode -in @("explode","process","single"))
#$dest = Get-AnsibleParam -obj $params -name "dest" -type "path" -failifempty $true
#$backup = Get-AnsibleParam -obj $params -name "backup" -type "bool" -default $false
#throw "invalid base64 length '$archive_name'"
#$parent_dir = [System.IO.Path]::GetDirectoryName($dirpath)
#Add-Type -AssemblyName System.IO.Compression | Out-Null
#$result.changed = $true
#Fail-Json -obj $result -message "Destination directory '$parent_dir' does not exist"

Exit-Json -obj $result
