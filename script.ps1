function GetIp{
    $api_url = "https://api64.ipify.org/?format=json";
    $request = Invoke-WebRequest -URI $api_url -UseBasicParsing;
    return (ConvertFrom-Json -InputObject $request).ip ;

}
$Res = GetIp;
Write-Output "IPv6 : $Res"
