# create User user
useradd -m CTFuser
echo 'CTFuser:1qaz2wsx' | chpasswd

# install python 
apt update && apt install python -y

# set privilege esc
echo 'print(8787)'> /home/CTFuser/crack.py && chmod o=+rwx /home/CTFuser/crack.py && chmod u+s /home/CTFuser/crack.py && chmod u+s /usr/bin/python

# set flag.txt
echo 'flag{user}' >> /home/CTFuser/user.txt && echo 'flag{root}' >> /root/root.txt && chmod 700 /root/root.txt
