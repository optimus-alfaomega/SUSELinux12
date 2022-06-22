#!/bin/bash
# instalación de nodejs


nodejs_repo=https://rpm.nodesource.com/setup_10.x

$opcion=$1

if [[ $opcion = "no_nvm" ]];
then
############### alternativa 1

`sudo yum -y update`
`curl –sL ${nodejs_repo} | sudo bash -`
`sudo yum install –y nodejs`
`node –version`
`npm –version`

############## alternativa 2
else
`sudo apt install curl`
`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash`
`nvm –version`
`nvm install node`
`node –version`
`nvm install --lts`
`nvm ls`
fi
