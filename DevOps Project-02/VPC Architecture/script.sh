#!/bin/bash
yum update -y
aws s3 cp s3://ed-web-config-project-s3/index.html  /var/www/html
systemctl restart httpd
sudo yum install awslogsd -y
sudo systemctl start awslogsd
