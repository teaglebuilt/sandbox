yum install epel-release -y
yum install ansible -y

sed -i -e 's/#roles_path/roles_path/g' /etc/ansible/ansible.cfg
sed -i -e 's/#host_key_checking/host_key_checking/g' /etc/ansible/ansible.cfg
sed -i -e 's/#inventory/inventory/g' /etc/ansible/ansible.cfg

echo "[all]" > /etc/ansible/hosts
echo "sanboxmaster" >> /etc/ansible/hosts
echo "sandboxagentone" >> /etc/ansible/hosts
echo "sandboxagenttwo" >> /etc/ansible/hosts
echo "" >> /etc/ansible/hosts
echo "[agents]" >> /etc/ansible/hosts
echo "sandboxagentone" >> /etc/ansible/hosts
echo "sandboxagenttwo" >> /etc/ansible/hosts
echo "" >> /etc/ansible/hosts
echo "[master]" >> /etc/ansible/hosts
echo "sanboxmaster" >> /etc/ansible/hosts


echo "192.168.0.190 sandboxmaster" >> /etc/hosts
echo "192.168.0.191 sandboxagentone" >> /etc/hosts
echo "192.168.0.192 sandboxagenttwo" >> /etc/hosts





