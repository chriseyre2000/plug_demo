defmodule PlugDemo.SetContentTypePlug do
  @moduledoc false

  require Logger

  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, opts) do
    conn
    |> put_resp_content_type(opts)
  end


end