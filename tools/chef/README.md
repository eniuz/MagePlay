## Knife Configuration

Knife's configuration file is named knife.rb. Unless directly passed the configuration file location via the -c command line option, Knife searches for this configuration by searching for .chef/knife.rb, starting at the current working directory and moving upward. If no configuration is found ~/.chef/knife.rb is used if it exists.

You can configure the project specific configuration within the .chef directory in this project.

## Upload Cookbooks

If you are planning to use Opscode Chef Server you will need to upload the cookbooks from your project to the server.

    $ knife cookbook upload --all