### Setting Up Your MAC with Ansible

This is an Ansible playbook for customizing your MacOSX install.

To setup, clone this repo and run the `setup.sh` script. The script script `pip`, `ansible`, and the proceeds to run the `ansible` playbook, which installs and customizes predefined applications.

If you already have ansible installed, then you can run the following:
```
ansible-playbook -i ./hosts playbook.yml --verbose
```

The playbook uses Homebrew, as well as Homebrew Cask to install and customize your applications. You can customize the list of
what get's installed at [here](https://raw.githubusercontent.com/therandomsecurityguy/macosx-setup/master/roles/setup/vars/main.yml).

