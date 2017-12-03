defmodule HelloApiWeb.HelloViewTest do
  use HelloApiWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "render index.json" do 
    assert render(HelloApiWeb.HelloView, "index.json", []) ==
            %{hello: "world"}
  end

end