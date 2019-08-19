defmodule TeacherWeb.PageController do
  use TeacherWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
