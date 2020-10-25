defmodule TravelNoteWeb.PageController do
  use TravelNoteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
