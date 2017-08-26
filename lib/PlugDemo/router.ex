defmodule PlugDemo.Router do
  use Plug.Router

  plug PlugDemo.SetContentTypePlug, "text/plain"

  plug :match
  plug :dispatch

  get "/", do: send_resp(conn, 200, "Welcome")
  match _, do: send_resp(conn, 404, "Oops!")
end