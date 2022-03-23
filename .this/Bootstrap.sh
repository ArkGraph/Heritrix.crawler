# Bootstrap Arch
# when: arch doesn't have repo set up yet, but has Python

# Python
python -m ensurepip --upgrade

# path
if grep -q "/home/me/.local/bin" ~/.bash_profile; then
  echo found
else
  echo "PATH=$PATH:/home/me/.local/bin" >> ~/.bash_profile  # run only one time!
fi

source ~/.bash_profile

# Ansible in pip
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible-with-pip

python3 -m pip install --user ansible	# Slightly different from official docs, but works on Arch, EndeavorOS

python3 -m pip install --user paramiko
sudo python -m pip install ansible
