MagePlay
========

Playground for Magento+Behat+PHPSpec2.

Installation
------------

```sh
cd ~/Sites
git clone git://github.com/jakzal/MagePlay.git mageplay.dev
```

```sh
cd ~/Sites/mageplay.dev
gem install bundler
bundle install --binstubs
```

```sh
cd ~/Sites/mageplay.dev/tools/chef
bundle exec librarian-chef install
```

Configure `server_name`, `vm_ip` and **any occurence** of `development.local`  in `tools/vagrant/Vagrantfile`.

```
server_name = "mageplay.dev"
vm_ip = "33.33.33.23"
```

Add the server name and its ip to the `/etc/hosts`:

```
33.33.33.23 mageplay.dev mageplay.css.dev mageplay.imgs.dev mageplay.js.dev xhprof.mageplay.dev
```

Boot the vm:

```sh
cd ~/Sites/mageplay.dev/tools/vagrant
bundle exec vagrant up
```

You might want to load Sample Data to the magentodb database (root user and password). It can be found on the Magento downloads page: http://www.magentocommerce.com/download. 
Remember to load it before you configure Magento.

