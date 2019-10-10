### MAC setup with Ansible

This is an Ansible playbook for customizing your MacOSX install or for when you are like me and nuke a laptop every couple of years.

#### Dependencies

You'll need the full Xcode package already installed. 

To verifiy if the full Xcode package is already installed, run the following:

```
$ xcode-select -p
```

If you see the following:

```
/Applications/Xcode.app/Contents/Developer
```
Then the Xcode full package is installed. 

To get the Xcode command line tools installed, run the following:

```
$ xcode-select --install
```
Click 'Install' and follow the prompts to the App Store to download the 'Xcode Command Line Tools'.


#### Install

For setup, you can run the following:

```
curl -s https://raw.githubusercontent.com/therandomsecurityguy/macosx-setup/master/setup.sh | /bin/bash
```

This will install `pip`, `ansible`, and then proceeds to run the `ansible` playbook, which installs and customizes predefined applications.

The other option is to install [Ansible](http://docs.ansible.com/ansible/intro_installation.html), clone the repo, and run the following playbook:
```
ansible-playbook -i ./hosts playbook.yml --verbose
```

The playbook uses Homebrew, as well as Homebrew Cask to install and customize your applications. You can customize the list of
what get's installed at [here](https://raw.githubusercontent.com/therandomsecurityguy/macosx-setup/master/roles/setup/vars/main.yml).

