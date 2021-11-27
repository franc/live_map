import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :live_maps, LiveMapsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Tj/vFWGvsPiHXLVymNszS7nY817kJR4PsJxvFrsV2fPNAhJ4TT29x8oMqj36i2N1",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
