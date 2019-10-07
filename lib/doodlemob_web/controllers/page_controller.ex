defmodule DoodlemobWeb.PageController do
  use DoodlemobWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
