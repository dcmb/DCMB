# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
require File.join(File.dirname(__FILE__), 'boot')

require 'radius'

Radiant::Initializer.run do |config|
  gem 'authlogic'
  
  # Skip frameworks you're not going to use (only works if using vendor/rails).
  # To use Rails without a database, you must remove the Active Record framework
  # config.frameworks -= [ :action_mailer ]

  # Only load the extensions named here, in the order given. By default all
  # extensions in vendor/extensions are loaded, in alphabetical order. :all
  # can be used as a placeholder for all extensions not explicitly named.
  config.extensions = [  :settings, :share_layouts, :submenu, :reader, :all, :file_system ]

  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random,
  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = {
    :session_key => '_dcmb_session',
    :secret      => '3901bcb09981753e93dc31a647616a91a2c122c1'
  }

  # Comment out this line if you want to turn off all caching, or
  # add options to modify the behavior. In the majority of deployment
  # scenarios it is desirable to leave Radiant's cache enabled and in
  # the default configuration.
  #
  # Additional options:
  #  :use_x_sendfile => true
  #    Turns on X-Sendfile support for Apache with mod_xsendfile or lighttpd.
  #  :use_x_accel_redirect => '/some/virtual/path'
  #    Turns on X-Accel-Redirect support for nginx. You have to provide
  #    a path that corresponds to a virtual location in your webserver
  #    configuration.
  #  :entitystore => "radiant:tmp/cache/entity"
  #    Sets the entity store type (preceding the colon) and storage
  #   location (following the colon, relative to Rails.root).
  #    We recommend you use radiant: since this will enable manual expiration.
  #  :metastore => "radiant:tmp/cache/meta"
  #    Sets the meta store type and storage location.  We recommend you use
  #    radiant: since this will enable manual expiration and acceleration headers.
  config.middleware.use ::Radiant::Cache,
    :entitystore => "radiant:tmp/cache/entity",
    :metastore => "radiant:tmp/cache/meta"

  # Use the database for sessions instead of the cookie-based default,
  # which shouldn't be used to store highly confidential information
  # (create the session table with 'rake db:sessions:create')
  config.action_controller.session_store = :cookie_store

  # Activate observers that should always be running
  config.active_record.observers = :user_action_observer

  # Make Active Record use UTC-base instead of local time
  config.time_zone = 'UTC'

  # Set the default field error proc
  config.action_view.field_error_proc = Proc.new do |html, instance|
    if html !~ /label/
      %{<div class="error-with-field">#{html} <small class="error">&bull; #{[instance.error_message].flatten.first}</small></div>}
    else
      html
    end
  end

  config.after_initialize do
    # Add new inflection rules using the following format:
    ActiveSupport::Inflector.inflections do |inflect|
      inflect.uncountable 'config'
    end
  end
end