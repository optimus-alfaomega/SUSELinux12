#!/bin/bash
# instalación de nodejs

`sudo yum -y update`
`curl –sL ${nodejs_repo} | sudo bash -`
`sudo yum install –y nodejs`
`node –version`
`npm –version`
`npm install -g serve`
`mkdir /home/react/dev/`
`npx create-react-app /home/react/dev`
`cd /home/react/dev/`
`npm  run build`
`serve -s build`   #There are a few options here, by default if we use ‘Serve’ it will use port 5000;

