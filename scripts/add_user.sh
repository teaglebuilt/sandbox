useradd -m -p 'pass123' -s /bin/bash $1
usermod -a -G wheel $1  
echo "$1  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
sudo -u $1 ssh-keygen -t rsa -b 2048 -f /home/$1/.ssh/$(hostname) -q -N "dteagle@cpicardgroup.com"
cp -f /home/$1/.ssh/$(hostname) /sandbox/keys/
cp -f /home/$1/.ssh/$(hostname).pub /sandbox/keys/$(hostname).pub
cat /sandbox/keys/sandbox.pub >> /etc/ssh/authorized_keys
echo "Host *" > /home/$1/.ssh/config
echo "    IdentityFile /home/$1/.ssh/$(hostname)" >> /home/$1/.ssh/config
chown $1.$1 /home/$1/.ssh/config
chmod 600 /home/$1/.ssh/config