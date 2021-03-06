defmodule RowerWeb.Router do
  use RowerWeb, :router

  # pipeline :browser do
  #   plug :accepts, ["html"]
  #   plug :fetch_session
  #   plug :fetch_flash
  #   plug :protect_from_forgery
  #   plug :put_secure_browser_headers
  # end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RowerWeb do
    pipe_through :api
  end
  forward "/graphiql", Absinthe.Plug.GraphiQL, schema: RowerWeb.Schema
  forward "/", Absinthe.Plug, schema: RowerWeb.Schema
  # scope "/", RowerWeb do
  #   pipe_through :browser
  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  # scope "/api", RowerWeb do
  #   pipe_through :api
  # end
end
