function GetRegistryParameter {
    [CmdletBinding()]
    param ()
    @{
        Path = "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters"
        Name = "srvcomment"
    }
}
