function IPInRange {
    [cmdletbinding()]
    [outputtype([System.Boolean])]
    param(
        # IP Address to find.
        [parameter(Mandatory,
                   Position=0)]
        [validatescript({
            ([System.Net.IPAddress]$_).AddressFamily -eq 'InterNetwork'
        })]
        [string]
        $IPAddress,
  
        # Range in which to search using CIDR notation. (ippaddr/bits)
        [parameter(Mandatory,
                   Position=1)]
        [validatescript({
            $IP   = ($_ -split '/')[0]
            $Bits = ($_ -split '/')[1]
  
            (([System.Net.IPAddress]($IP)).AddressFamily -eq 'InterNetwork')
  
            if (-not($Bits)) {
                throw 'Missing CIDR notiation.'
            } elseif (-not(0..32 -contains [int]$Bits)) {
                throw 'Invalid CIDR notation. The valid bit range is 0 to 32.'
            }
        })]
        [alias('CIDR')]
        [string]
        $Range
    )
  
    # Split range into the address and the CIDR notation
    [String]$CIDRAddress = $Range.Split('/')[0]
    [int]$CIDRBits       = $Range.Split('/')[1]
  
    # Address from range and the search address are converted to Int32 and the full mask is calculated from the CIDR notation.
    [int]$BaseAddress    = [System.BitConverter]::ToInt32((([System.Net.IPAddress]::Parse($CIDRAddress)).GetAddressBytes()), 0)
    [int]$Address        = [System.BitConverter]::ToInt32(([System.Net.IPAddress]::Parse($IPAddress).GetAddressBytes()), 0)
    [int]$Mask           = [System.Net.IPAddress]::HostToNetworkOrder(-1 -shl ( 32 - $CIDRBits))
  
    # Determine whether the address is in the range.
    if (($BaseAddress -band $Mask) -eq ($Address -band $Mask)) {
        $true
    } else {
        $false
    }
  }
  
  function Get-LocationCode() {
    <#
    .SYNOPSIS
    Given an IP address, this will return the location code.
  
    .EXAMPLE
    Get-LocationCode -IP 10.0.0.1
    #>
    [CmdletBinding()] param($IP)
  
    $DetectedSiteCode = 'unknown'
    (Get-ChildItem -Recurse -Path "./locations" -Filter "*.json" -Exclude ".schema.json" -File).Name | ForEach-Object {
      $Site = Get-Content -Path "./locations/$_" -Raw | ConvertFrom-Json
      ForEach ($Network in $Site.networks) {
        if (IPInRange -IPAddress $IP -Range $Network) {
          $DetectedSiteCode = $Site.code
        }
      }
    }
    return $DetectedSiteCode
  }
  Export-ModuleMember -Function Get-LocationCode
