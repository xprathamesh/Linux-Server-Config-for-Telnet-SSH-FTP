#echo `cat /etc/xinetd.d/telnet` 

#install telnet server
yum install telnet telnet-server -y
rpm -qa telnet-server
rpm -qa telnet

/etc/rc.d/init.d/xinetd stop
/etc/rc.d/init.d/xinetd start
/etc/rc.d/init.d/xinetd status

#update telnet file
cp telon /etc/xinetd.d/telnet

chkconfig --list telnet
chkconfig telnet on
chkconfig --list telnet
chkconfig --list xinetd
service xinetd restart

useradd telnetuser
passwd telnetuser

str=`/sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'`
echo "the IP Address of the Server is:"
echo $str
