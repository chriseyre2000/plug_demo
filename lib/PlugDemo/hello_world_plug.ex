defmodule HelloWorldPlug do
  @moduledoc false

  import Plug.Conn
  require Logger

  def init(options) do
    Logger.info "Options"
    options
  end

  def call(conn, _opts) do
      Logger.info "Call"

      conn
      |> put_resp_content_type("text/plain")
      |> send_resp(200, "Hello World!\n")
  end
  
end