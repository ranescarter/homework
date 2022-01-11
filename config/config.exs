# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.

use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# third-party users, it should be done in your "mix.exs" file.

config :hound, driver: "chrome_driver"
config :tesla, :adapter, Tesla.Adapter.Hackney
# config :my_app_web, MyAppWeb.Endpoint, url: [host: "the-internet.herokuapp.com"]
# config :phoenix, :json_library, Jason
# config :floki, :html_parser, Floki.HTMLParser.Html5ever

# You can configure your application as:
#
#     config :homework, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:homework, :key)
#
# You can also configure a third-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env()}.exs"

"""
It appears that Mix.Config has been deprecated
The following error is returned when running 'iex -S mix'
warning: use Mix.Config is deprecated. Use the Config module instead
https://hexdocs.pm/elixir/master/Config.html

Using import Config is suggested as the preferred method
https://hexdocs.pm/elixir/master/Config.html
"""
