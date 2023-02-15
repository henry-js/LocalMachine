function Set-ComputerDescription {
    [CmdletBinding(SupportsShouldProcess)]
    [OutputType([string])]
    param (
        # Parameter help description
        [Parameter(Mandatory, Position = 1, ValueFromPipeline)]
        [string]
        $Description
    )

    begin {
        $setParams = Get-RegistryParameter
    }
    process {
        if ($PSCmdlet.ShouldProcess((Join-Path -Path $setParams.Path -ChildPath $setParams.Name))) {
            $params = @{
                Type  = "String"
                Value = $Description
                Force = $true
            }
            try {
                New-ItemProperty @setParams @params
            } catch {
                $PSCmdlet.ThrowTerminatingError($_)
            }
        }
    }
}
