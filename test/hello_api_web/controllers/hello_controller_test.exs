defmodule HelloApiWeb.HelloControllerTest do
  use HelloApiWeb.ConnCase, async: true
  use ExUnit.Case

  test "GET /api" do
    conn = get build_conn(), "/api"

    assert conn.state == :sent
    assert conn.status == 200

    result = Poison.Parser.parse!(conn.resp_body, keys: :atoms!)
    assert result.hello == "world"    
  end

end