# accepts a storage account name and a key
[[ -z "$HOME" || ! -d "$HOME" ]] && { echo 'fixing $HOME'; HOME=/root; } 
export HOME 

export AZURE_STORAGE_ACCOUNT="$1" 
export AZURE_STORAGE_ACCESS_KEY="$2" 
azure storage container create vhds

blob_name=$(cut -f2 -d, /mnt/config.txt) 
blobxfer $1 vhds "/mnt/$blob_name" --remoteresource "$blob_name" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd
blobxfer $1 vhds "/mnt/template-maria4-dataDisk-0.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --remoteresource "template-maria4-dataDisk-0.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd
blobxfer $1 vhds "/mnt/template-maria4-dataDisk-1.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --remoteresource "template-maria4-dataDisk-1.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd
blobxfer $1 vhds "/mnt/template-maria4-dataDisk-2.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --remoteresource "template-maria4-dataDisk-2.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd
blobxfer $1 vhds "/mnt/template-maria4-dataDisk-3.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --remoteresource "template-maria4-dataDisk-3.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd
blobxfer $1 vhds "/mnt/template-maria4-dataDisk-4.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --remoteresource "template-maria4-dataDisk-4.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd
blobxfer $1 vhds "/mnt/template-maria4-dataDisk-5.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --remoteresource "template-maria4-dataDisk-5.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd
blobxfer $1 vhds "/mnt/template-maria4-dataDisk-6.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --remoteresource "template-maria4-dataDisk-6.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd
blobxfer $1 vhds "/mnt/template-maria4-dataDisk-7.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --remoteresource "template-maria4-dataDisk-7.7316bfd4-3279-48ea-ab76-92a978617326.vhd" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd
 