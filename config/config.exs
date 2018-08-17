# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :menu,
  ecto_repos: [Menu.Repo]

# Configures the endpoint
config :menu, Menu.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DAihguL9phi5hQvwN4GcLZy0cbUY/1DW9P+ifmOpd8zMsX7xLKG1ub3+4ODVvsiA",
  render_errors: [view: Menu.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Menu.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
