defmodule DoodlemobWeb.DoodleController do
  use DoodlemobWeb, :controller
  alias Doodlemob.Doodle
  alias Doodlemob.Repo

  def dashboard(conn, _params) do
    doodles = Repo.all(Doodle)
    render(conn, "index.html", doodles: doodles)
  end

  def create(conn, %{"doodle" => doodle}) do
    changeset = Doodle.changeset(%Doodle{}, doodle)
    case Repo.insert(changeset) do
      {:ok, _doodle} ->
        json(conn, %{message: "Doodle recived"})
      {:error, _changeset} ->
        json(conn, %{message: "Doodle rejected"})
      end
  end
end
