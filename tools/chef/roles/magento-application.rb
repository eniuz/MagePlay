name "magento-application"
description "Magento Application server using Apache 2.x. This is the Admin interface with larger Memory usage. The cron tasks are configured to run on this machine, all large data processing happens here."
# List of recipes and roles to apply. Requires Chef 0.8, earlier versions use 'recipes()'.
run_list(
  "chef-magento",
  "chef-magento::install",
  "chef-magento::config_local",
  "chef-magento::crontab"
  )
# Attributes applied if the node doesn't have it set already.
default_attributes(
    "php" => {
        "memory_limit" => '512M'
    },
    "magento" => {
        "php" => {
            "memory_limit" => '1G',
            "max_execution_time" => '1800'
        }
    }
)
# Attributes applied no matter what the node has set already.
override_attributes()
