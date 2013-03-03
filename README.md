Dawn Cookbook
=============

A Chef development environment cookbook, based on [Pivotal
Workstation](https://github.com/pivotal/pivotal_workstation). This provisioning tool is designed to work with both
Linux and OS X, and should:

1. Install required software dependences
2. Manage and install dot files and other configurations
3. Generate multiple SSH keys for various services (GitHub, etc.)

Requirements
------------

For OS X recipes, you will need the [dmg cookbook](https://github.com/opscode-cookbooks/dmg).

Usage
-----

For best results, use the Soloist gem to select which cookbooks and
recipes you wish to use.

  mkdir ~/cookbooks
  cd ~/cookbooks
  git clone https://github.com/adammulligan/dawn
  sudo gem install soloist

Create a new `.soloistrc` file of your design in `/templates` (in the
format `soloistrc.machine_name`, or modify an existing template,
ensuring the your `soloistrc` points to `~/cookbooks`.

  rake install

License and Authors
-------------------
Authors:

* Adam Mulligan (UNEP-WCMC)

Licensed under MIT.
