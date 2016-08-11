echo "Enter choice for Server Configuration:"
tc=1 sc=1 ftc=1

until [ $tc -eq 0 -a $sc -eq 0 -a $ftc -eq 0 ] 
do
echo "Enter:"
if [ $tc -eq 1 ]
then
echo "1 for Telnet"
fi
if [ $sc -eq 1 ]
then
echo "2 for SSH"
fi
if [ $ftc -eq 1 ]
then
echo "3 for FTP"
fi
echo "0 to Exit"

read choice
if [ $tc -eq 1 -a $choice -eq 1 ]
then
sh telconf.sh
tc=0
elif [ $sc -eq 1 -a $choice -eq 2 ]
then
sh sshconf.sh
sc=0
elif [ $ftc -eq 1 -a $choice -eq 3 ]
then
sh ftpconf.sh
ftc=0
elif [ $choice -eq 0 ] 
then exit
else
echo "Invalid Choice"
fi
done
