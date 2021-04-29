# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :movies, Movies.Repo,
  database: "movies_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :movies,
  ecto_repos: [Movies.Repo]

# Configures the endpoint
config :movies, MoviesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MEQSKvTd3wYmSdShBCyKjKI/WgmfyKwhJtTqeLLDZKfb7DHcUQRlOXZFvncQWC6t",
  render_errors: [view: MoviesWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Movies.PubSub,
  live_view: [signing_salt: "/PYcuQAS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
