
CALL az login --service-principal -u ae850628-c022-4fef-9eb2-159a8ad5f743 -p JvFEy~r8Bvp3wG-DT5~Qg956t9hC49bZ7. -t 1bfc3093-d35c-42eb-8df1-47a59e098146
CALL Get-AzResourceGroup -Name rg-west-prod-IAUCD
CALL $frontendSubnet = New-AzVirtualNetworkSubnetConfig -Name frontendSubnet -AddressPrefix "10.0.1.0/24"
CALL $backendSubnet  = New-AzVirtualNetworkSubnetConfig -Name backendSubnet  -AddressPrefix "10.0.2.0/24"
CALL New-AzVirtualNetwork -Name MyVirtualNetwork -ResourceGroupName rg-west-prod-IAUCD -Location centralus -AddressPrefix "10.0.0.0/16" -Subnet $frontendSubnet,$backendSubnet

