# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_corsair_session',
  :secret      => '0332df97eb322e0b4c51dc28eb2872158ff02c51843a94aeac8745e07ef6fcf7b0405ccd36a9f3ed23089eafa246d1f8c984bf05d73a1aeda47a7d0c1e7f66ee'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
