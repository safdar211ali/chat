# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Chat::Application.config.secret_key_base = '3b71c8beb0432ad458f3a80e42638617acbcbe203f3a6ead7be8d81491fd350cd6da19fa3e2498251ebc8e145ed520f9d2e1cd9bd897b047b1e601a953a4ff00'
