defmodule MyFirstPhoenix.ArticleController do
  use MyFirstPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", message: "我輩はコロ助なり"
  end
end
