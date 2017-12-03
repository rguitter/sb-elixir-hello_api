defmodule HelloApiWeb.Router do
  use HelloApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HelloApiWeb do
    pipe_through :api
    get "/", HelloController, :index
  end
end
