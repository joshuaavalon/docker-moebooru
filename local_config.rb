# This is the file you use to overwrite the default config values.
# Look at default_config.rb and copy over any settings you want to change.

# You MUST configure these settings for your own server!
CONFIG["app_name"] = "DAN_SITENAME"
CONFIG["server_host"] = "DAN_HOSTNAME"
CONFIG["admin_contact"] = "webmaster@" + CONFIG["server_host"]

# Generate with `bundle exec rake secret`
# CONFIG["secret_key_base"] = "value here"

CONFIG["url_base"] = "http://" + CONFIG["server_host"]	# set this to "" to get relative image urls
CONFIG["admin_contact"] = "webmaster@" + CONFIG["server_host"]
CONFIG["local_image_service"] = CONFIG["app_name"]
# CONFIG["image_service_list"][CONFIG["local_image_service"]] = "http://127.0.0.1/iqdb/iqdb-xml.php"

# Use this config to enable Google Analytics. Fill in the GA Tracking ID.
# CONFIG['ga-tracking-id'] = 'UA-XXXXX-X'

# Use this config to enable Piwik Analytics. Fill in the Site ID and FQDN (no protocol prefix)
# CONFIG["piwik_host"] = "stats.moe.booru"
# CONFIG["piwik_site_id"] = 1

# Use this config to enable AddThis social sharing buttons. Fill in the Profile ID.
# CONFIG['addthis-id'] = 'ra-...'

# Default language. Defaults to en.
# CONFIG['default_locale'] = 'en'

# Set to false to prevent loading of unicorn/puma (eg. to use passenger).
# Default: true
# CONFIG['standalone'] = true

# Background color when resizing transparent PNG/GIF images.
# Use web notation or check the list of possible colors here:
#   http://www.imagemagick.org/script/color.php
# Default: gray
# CONFIG['bgcolor'] = 'gray'

# Map tag type ids with names.
# The primary one is the one starts with uppercase.
# CONFIG['tag_types'] = {
#   'General' => 0,
#   'Artist' => 1,
#   'Copyright' => 3,
#   'Character' => 4,
#   'general' => 0,
#   'artist' => 1,
#   'copyright' => 3,
#   'character' => 4,
#   'art' => 1,
#   'copy' => 3,
#   'char' => 4
# }

# Tag type ordering in various locations.
# CONFIG['tag_order'] = %w(artist copyright character general)

# Servers for static files (assets and uploaded files)
# CONFIG[:file_hosts] = { :files => "files.moe.booru", :assets => "assets.moe.booru" }
