# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_spinner_upper_session',
  :secret      => '92303e73c26e479894f8782de510408b581d473989164780897221e065c57bf01fd585ceb09dee7e6a864cda3ce3602d2eb78816b90e2ffff3e9bd8acfcced6c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
