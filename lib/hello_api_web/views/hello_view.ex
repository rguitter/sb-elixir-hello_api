defmodule HelloApiWeb.HelloView do
  use HelloApiWeb, :view

  def render("index.json", %{}) do
    %{hello: "world"}
  end

end