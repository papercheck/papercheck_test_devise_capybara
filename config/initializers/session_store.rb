# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_devise_session',
  :secret      => 'b2b53edcc3dc0d8c3a2e467c60033cd611f593d873e5356be27a4d6739ea76193d556feaadfb451698d0c51063915d3522b93582aeccd0bbbf960315c9a2c492'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
