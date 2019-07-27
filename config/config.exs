# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :qual_research_tool,
  ecto_repos: [QualResearchTool.Repo]

# Configures the endpoint
config :qual_research_tool, QualResearchToolWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "g5ukrnmOVCdt55fcmtU3v2OmeBVKof/0b3Xx0zx9A/TjAnmLOM2YMIZWQPVRW0LE",
  render_errors: [view: QualResearchToolWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: QualResearchTool.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
