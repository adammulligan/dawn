Dawn Cookbook
=============

A Chef development environment cookbook, based on Pivotal
Workstation[1]. This provisioning tool is designed to work with both
Linux and OS X, and should:

1. Install required software dependences
2. Manage and install dot files and other configurations

While the individual recipes are atomic and can be shared among Chef
installations, there are meta recipes that are loosely based around my
personal machines that allow me to define what should be installed
where.

[1]: https://github.com/pivotal/pivotal_workstation

Requirements
------------

For OS X recipes, you will need the `dmg` cookbook[2].

[2]: https://github.com/opscode-cookbooks/dmg

Usage
-----

For best results, use the Soloist gem to select which cookbooks and
recipes you wish to use.

More instructions to follow.

License and Authors
-------------------
Authors:

* Adam Mulligan (UNEP-WCMC)

Licensed under MIT.
