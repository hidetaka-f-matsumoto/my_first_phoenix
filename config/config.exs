# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :my_first_phoenix,
  ecto_repos: [MyFirstPhoenix.Repo]

# Configures the endpoint
config :my_first_phoenix, MyFirstPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mSo8U1egv1EN8l3/euKfUWKQHxv35d7S/PDqDh9+dWBgs3IOl+6ZyMj0uqBKUUtB",
  render_errors: [view: MyFirstPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MyFirstPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
