defmodule PlugDemo.Application do
  use Application
  require Logger

  def start(_type, _args) do

    {port,_} = (System.get_env("PORT") || "5000") |> Integer.parse

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, PlugDemo.Router, [], port: port)
    ]

    Logger.info "Started application"

    Supervisor.start_link(children, strategy: :one_for_one)
  end

end
