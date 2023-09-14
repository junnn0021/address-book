#!/bin/bash -ex
# Updated to use Amazon Linux 2
yum -y update
yum -y install httpd php mysql php-mysql
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mariadb-server
/usr/bin/systemctl enable httpd
/usr/bin/systemctl start httpd
cd /var/www/html
wget https://aws-largeobjects.s3.ap-northeast-2.amazonaws.com/AWS-AcademyACF/lab7-app-php7.zip
unzip lab7-app-php7.zip -d /var/www/html/
chown apache:root /var/www/html/rds.conf.php
sed -i 's/<?php \$RDS_URL="\(.*\)"; \$RDS_DB="\(.*\)"; \$RDS_user="\(.*\)"; \$RDS_pwd="\(.*\)"; ?>/<?php \$RDS_URL=\"${db_endpoint}\"; \$RDS_DB=\"${db_name}\"; \$RDS_user=\"${username}\"; \$RDS_pwd=\"${password}\"; ?>/g' rds.conf.php
sed -i "s/\$ep = .*/\$ep = \'${db_endpoint}\';/" rds-write-config.php
sed -i "s/\$db = .*/\$db = \'${db_name}\';/" rds-write-config.php
sed -i "s/\$un = .*/\$un = \'${username}\';/" rds-write-config.php
sed -i "s/\$pw = .*/\$pw = \'${password}\';/" rds-write-config.php
sudo php rds-write-config.php