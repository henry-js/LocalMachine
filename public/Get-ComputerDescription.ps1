function Get-ComputerDescription {
    [CmdletBinding()]
    [OutputType([string])]
    param ()

    begin {
        $getParams = GetRegistryParameter
    }
    process {
        Get-ItemPropertyValue @getParams
    }
}
