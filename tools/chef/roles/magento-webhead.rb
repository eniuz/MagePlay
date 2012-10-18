name "magento-webhead"
description "Magento webhead server using Apache 2.x. This a streamlined and optimised version of Magento. Using less memory resource and tuned for customer performance"
# List of recipes and roles to apply. Requires Chef 0.8, earlier versions use 'recipes()'.
run_list(
  "mysql::client",
  "apache2",
  "apache2::mod_php5",
  "apache2::mod_rewrite",
  "apache2::mod_ssl",
  "apache2::mod_deflate",
  "apache2::mod_expires",
  "apache2::mod_headers",
  "chef-magento",
  "chef-magento::self_signed_ssl",
  "chef-magento::config_local"
  )
# Attributes applied if the node doesn't have it set already. These are based on a machine with
# 24GB of RAM
default_attributes(
    "magento" => {
        "php" => {
            "memory_limit" => "256M",
            "max_execution_time" => "60"
        }
    },
    "apache" => {
        "prefork" => {
            "startservers" => 20,
            "minspareservers" => 5,
            "maxspareservers" => 10,
            "serverlimit" => 128,
            "maxclients" => 128,
            "maxrequestsperchild" => 4000
        },
        "worker" => {
            "startservers" => 20,
            "minspareservers" => 5,
            "maxspareservers" => 10,
            "serverlimit" => 128,
            "maxclients" => 128,
            "maxrequestsperchild" => 4000
        }
    }
)
# Attributes applied no matter what the node has set already.
override_attributes()
