# Very simple deployment of a 5 Node secure Service Fabric Cluster with WAD enabled

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgourlaa%2Fazure-quickstart-templates%2Fmaster%2Fservice-fabric-secure-cluster-5-node-1-nodetype-wad%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This template allows you to deploy a secure 5 node, Single Node Type Service fabric Cluster running Windows server 2012 R2 Data center on Standard_A2 Size VMs with Windows Azure diagnostics turned on.

## Creating a custom ARM template

If you are wanting to create a custom ARM template for your cluster, then you have to choices.

1. You can acquire this sample template make changes to it. 
2. Log into the azure portal and use the service fabric portal pages to generate the template for you to customize. 
	3. Log on to the Azure Portal [http://aka.ms/servicefabricportal](http://aka.ms/servicefabricportal).
	2. Go through the process of creating the cluster as described in [Creating Service Fabric Cluster via portal](https://azure.microsoft.com/documentation/articles/service-fabric-cluster-creation-via-portal) , but do not click on ***create**, instead go to Summary and download the template.
	
 	![DownloadTemplate][DownloadTemplate]
	1. you can save the downloaded template to your local machine, make any changes you need and deploy to azure.

## Deploying the ARM template to Azure using Azure PS

Refer to [Deploying ARM templates using PS ](https://azure.microsoft.com/en-us/documentation/articles/resource-group-template-deploy/) for detailed guidance on how to.

<!--Image references-->
[DownloadTemplate]: ./DownloadTemplate.png



