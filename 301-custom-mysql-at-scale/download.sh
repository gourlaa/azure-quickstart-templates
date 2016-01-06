# accepts a blob uri (MUST HAVE https:// at the beginning) and a key

[[ -z "$HOME" || ! -d "$HOME" ]] && { echo 'fixing $HOME'; HOME=/root; } 
export HOME 

apt-get -y update
apt-get -y install python3-pip
pip3 install blobxfer
apt-get install -y npm 
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g azure-cli 
pip3 install azure
azure config mode arm 

sa_domain=$(echo "$1" | cut -f3 -d/)
sa_name=$(echo $sa_domain | cut -f1 -d.)
container_name=$(echo "$1" | cut -f4 -d/)
blob_name=$(echo "$1" | cut -f5 -d/)

echo "sa name, container name, blob name:"    
echo $sa_name    
echo $container_name    
echo $blob_name    
echo "$container_name,$blob_name" > /mnt/config.txt  

blobxfer $sa_name $container_name /mnt/ --remoteresource $blob_name --storageaccountkey $2 --download --no-computefilemd5
blobxfer $sa_name $container_name /mnt/ --remoteresource "template-maria4-dataDisk-0.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --download --no-computefilemd5
blobxfer $sa_name $container_name /mnt/ --remoteresource "template-maria4-dataDisk-1.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --download --no-computefilemd5
blobxfer $sa_name $container_name /mnt/ --remoteresource "template-maria4-dataDisk-2.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --download --no-computefilemd5
blobxfer $sa_name $container_name /mnt/ --remoteresource "template-maria4-dataDisk-3.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --download --no-computefilemd5
blobxfer $sa_name $container_name /mnt/ --remoteresource "template-maria4-dataDisk-4.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --download --no-computefilemd5
blobxfer $sa_name $container_name /mnt/ --remoteresource "template-maria4-dataDisk-5.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --download --no-computefilemd5
blobxfer $sa_name $container_name /mnt/ --remoteresource "template-maria4-dataDisk-6.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --download --no-computefilemd5
blobxfer $sa_name $container_name /mnt/ --remoteresource "template-maria4-dataDisk-7.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --download --no-computefilemd5
