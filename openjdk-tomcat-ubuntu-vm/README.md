# VM-Ubuntu - Tomcat and Open JDK installation

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgourlaa%2Fazure-quickstart-templates%2Fmaster%2Fopenjdk-tomcat-ubuntu-vm%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This template allows you to create a Ubuntu VM with OpenJDK and Tomcat. Currently custom script file is pulled temporarily from https://raw.githubusercontent.com/gourlaa/azure-quickstart-templates/master/openjdk-tomcat-ubuntu-vm/java-tomcat-install.sh

Once the VM is successfully provisioned, tomcat installation can be verified by accessing the link http://<FQDN name or public IP>:8080/
