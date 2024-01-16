defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Ashraf"},
      %{id: 2, name: "Alice"},
      %{id: 3, name: "Bob"}
    ]

    json(conn, %{users: users})
    # render(conn, :user, users: users, layout: false)
  end
end
