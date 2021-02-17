# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cheep,
  ecto_repos: [Cheep.Repo]

# Configures the endpoint
config :cheep, CheepWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P2lTFnfsUPEf5fe87nPhS/8bqb1cmAmSKDlbRnHoEsfUFLljKJ2z8iTp2OeIsJfi",
  render_errors: [view: CheepWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Cheep.PubSub,
  live_view: [signing_salt: "TgTiWLIW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
