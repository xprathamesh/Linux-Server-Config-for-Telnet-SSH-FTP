#installation
sudo apt-get install openssh-server
rpm -qa openssh-server
rpm -qa portmap
rpm -qa xinetd
#restart services
sudo /etc/init.d/sshd start
sudo /etc/init.d/sshd stop
sudo /etc/init.d/sshd restart
service portmap restart
service xinetd restart
service sshd restart
#keep services after reboot
chkconfig sshd on
chkconfig portmap on
chkconfig xinetd on
#check running condition
service protmap status
service xinetd status
useradd sshuser
passwd sshuser
