sudo yum update -y
sudo yum install java-1.8.0-openjdk
sudo amazon-linux-extras install java-openjdk11
sudo yum install java-11-openjdk-devel
sudo alternatives --config java
sudo yum install docker
sudo usermod -a -G docker ec2-user
exit
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
sudo chmod 666 /var/run/docker.sock
sudo amazon-linux-extras install epel
sudo yum-config-manager --enable epel
sudo yum install daemonize -y
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo yum install jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
