echo "Installing Ansible..."

if ! which ansible 
then
yum -q makecache fast
yum -y -q install  ansible
fi


cp /vagrant/ansible/ansible.cfg.admin /etc/ansible/ansible.cfg

