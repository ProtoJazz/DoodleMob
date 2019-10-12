defmodule DoodlemobWeb.Router do
  use DoodlemobWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
   # post "/api/doodles", DoodleController, :create

  end

  scope "/api", DoodlemobWeb do
    pipe_through(:api)

    resources "/doodles", DoodleController
  end

  scope "/", DoodlemobWeb do
    pipe_through :browser
    get "/doodles", DoodleController, :dashboard
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", DoodlemobWeb do
  #   pipe_through :api
  # end
end
