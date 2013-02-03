idocs-cookbook
==============
A cookbook for installing idocs from Mashery (https://github.com/mashery/iodocs).

## Required Cookbooks
* nodejs - https://github.com/mdxp/nodejs-cookbook
* apt - https://github.com/opscode-cookbooks/apt
* npm - https://github.com/balbeko/chef-npm
* redis-server - Inline for now, Community ones are abandoned.

## Version 0.1
* Initial release, works with Ubuntu 12.10 (may work with others, untested.)

## TODO
* npm-cookbook re-installs iodocs npm package each time, known bug with npm-cookbook.
* Include to other OS's.
* Move redis-server to it's own cookbook.
