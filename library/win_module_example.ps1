#!powershell

# Include the module util ServiceAuth.psm1 from the my_namespace.my_collection collection
#AnsibleRequires -PowerShell ansible_collections.my_namespace.my_collection.plugins.module_utils.ServiceAuth

# Create the module spec like normal
$spec = @{
    options = @{
        resource_id = @{ type = 'str'; required = $true }
        state = @{ type = 'str'; choices = 'absent', 'present' }
    }
}

# Create the module from the module spec but also include the util spec to merge into our own.
$module = [Ansible.Basic.AnsibleModule]::Create($args, $spec, @(Get-MyNamespaceMyCollectionServiceAuthSpec))

# Call the ServiceAuth module util and pass in the module object so it can access the module options.
Invoke-MyServiceResource -Module $module -ResourceId $module.Params.resource_id -State $module.params.state

$module.ExitJson()
