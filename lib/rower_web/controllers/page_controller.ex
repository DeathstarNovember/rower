defmodule RowerWeb.PageController do
  use RowerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
