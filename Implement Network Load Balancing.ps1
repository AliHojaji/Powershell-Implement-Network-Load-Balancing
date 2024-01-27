#--- Author : Ali Hojaji ---#

#--*------------------------------------*--#
#---> Implement Network Load Balancing <---#
#--*------------------------------------*--#

#--> cinstall network load balancing feature and web server role on FKT nodes
Invoke-Command NLB1-TEST,NLB2-TEST,NLB3-TEST { Install-WindowsFeature TEST, RSAT-TEST, Web-Server }

#--> NLB cmdlets from RSAT-NLB feature
Get-Command -Module NetworkLoadBalancingClusters

#--> modify default IIS web page to reflect hostname
Invoke-Command NLB1-TEST,NLB2-TEST,NLB3-TEST { "Hewlo! This is <b>$env:computername</b> responding." > C:\inetpub\wwwroot\iisstart.htm }