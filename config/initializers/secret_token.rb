# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Auth::Application.config.secret_key_base = '4d4bfade91b50abf75be5d95144dc5fb0a0895c9acc5a2a55d08262a61448d3862ce782c1b100e3b27e9be96fca92d7208864661a33155cff4f6b121f35cc2c8'
