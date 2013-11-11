# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sass_project_session',
  :secret      => 'c9667d51aafd3e40f26d289d713f2d6611ef244bc58e85190e1c29f1a8ae931a410f8d58c3cc328bc2947be543cd9d06922155547249ea657ef730d49f8f695a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
