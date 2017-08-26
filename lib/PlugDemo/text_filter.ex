defmodule PlugDemo.TextFilter do
  @moduledoc false

  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
  end


end