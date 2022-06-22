#!/bin/bash
# repos en github

1. Update the installed packages and package cache on your instance.
`sudo yum update -y`
2. Install the most recent Docker Community Edition package.
`sudo amazon-linux-extras install docker`
3. Start the Docker service.
`sudo service docker start`
4. Add the ec2-user to the docker group so that you can run Docker commands without using sudo
`sudo usermod -a -G docker ec2-user`
5. Pick up the new docker group permissions by logging out and logging back in again. To do this, close your current SSH terminal window and reconnect to your instance in a new one. Your new SSH session should have the appropriate docker group permissions.
6. Verify that the ec2-user can run Docker commands without using sudo.
`docker ps`
7. #continue reading tutorial from AWS "https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install-linux.html"