# VNET to VNET connection

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgourlaa%2Fazure-quickstart-templates%2Fmaster%2F201-vnet-to-vnet%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This template creates two VNETs in two different locations, each containing a subnet and Gateway subnet. It creates two public IPs which are used to create two VPN Gateways in the two VNETs. Finally it establishes connection between the two gateways.

Modify parameters file to change default values.