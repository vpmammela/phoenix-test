defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "John Doe", email: "john.doe@example.com"},
      %{id: 2, name: "Jane Doe", email: "jane.doe@example.com"},
      %{id: 3, name: "John Smith", email: "john.smith@example.com"},
      %{id: 4, name: "Jane Smith", email: "jane.smith@example.com"},
    ]
    json(conn, %{users: users})
  end
end
