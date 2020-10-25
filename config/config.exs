# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :travel_note,
  ecto_repos: [TravelNote.Repo]

# Configures the endpoint
config :travel_note, TravelNoteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Oys8lwuvi1yUF6kqQu1Pw92SEMqsQRbE4VdUykdD0+edQSuHp//ZozoWDCmyaW7c",
  render_errors: [view: TravelNoteWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TravelNote.PubSub,
  live_view: [signing_salt: "5vU3oEaW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
