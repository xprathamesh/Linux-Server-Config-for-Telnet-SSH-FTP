#install telnet server
sudo apt-get install vsftpd
netstat -tulpn 
cp vsftpd1.conf /etc/vsftpd/vsftpd.conf

#restart servicessudo /etc/init.d/vsftpd start
sudo /etc/init.d/vsftpd stop
sudo /etc/init.d/vsftpd restart
service vsftpd restart



 
