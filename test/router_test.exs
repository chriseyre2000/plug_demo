defmodule RouterTest do
  @moduledoc false

  use ExUnit.Case, async: true
  use Plug.Test

  @opts PlugDemo.Router.init([])

  test "returns Welcome" do
    # Create a test connection
    conn = conn(:get, "/")

    # Invoke the plug
    conn = PlugDemo.Router.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_headers |> Enum.reverse |> hd == {"content-type", "text/plain; charset=utf-8"}
    assert conn.resp_body == "Welcome"
  end

  test "returns Oops" do
    # Create a test connection
    conn = conn(:get, "/bad-request")

    # Invoke the plug
    conn = PlugDemo.Router.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 404
    assert conn.resp_body == "Oops!"
  end


end