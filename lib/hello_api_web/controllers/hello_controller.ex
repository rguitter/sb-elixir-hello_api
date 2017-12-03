defmodule HelloApiWeb.HelloController do
  use HelloApiWeb, :controller

  def index(conn, _params) do
    render conn, "index.json"
  end

end