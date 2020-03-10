mac-ansible
===========

I use this project to configure my macOS the way I like it. That way I can wipe
and re-install with less effort. See my
[blog post](https://adamj.eu/tech/2019/03/20/how-i-provision-my-macbook-with-ansible/).

Getting Started
---------------

0. `xcode-select --install`
1. Install [homebrew](http://brew.sh/) with the command from the site
   `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
2. `brew install pyenv`
3. `pyenv install <latest_python_version>` (Check playbook up to date)
   `pyenv install -l` list versions

4. Make sure pyenv's python on path (it will be after my shell settings are in place from playbook)
5. `pip install ansible` (always the best way to install Ansible)
6. Then 
   `git clone https://github.com/gmgp/mac-ansible.git`
   `cd mac-ansible`
7. Edit the list at `roles/gio_mac/main.yaml`
   `ansible-playbook playbook.yml`


Fork! Copy! Adapt!
------------------

This is distributed under the Unlicense so you can do whatever you want with
it, see LICENSE.
