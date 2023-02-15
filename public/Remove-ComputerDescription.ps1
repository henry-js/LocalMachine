function Remove-ComputerDescription {
    [CmdletBinding(SupportsShouldProcess)]
    [OutputType([string])]
    param ()

    begin {
        $removeParams = GetRegistryParameter
    }
    process {
        if ($PSCmdlet.ShouldProcess("Removing computer description")) {
            Remove-ItemProperty @removeParams
        }
    }
}
