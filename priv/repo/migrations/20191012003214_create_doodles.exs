defmodule Doodlemob.Repo.Migrations.CreateDoodles do
  use Ecto.Migration

  def change do
    create table(:doodles) do
      add :image_data, :text
      add :seat_info, :string

      timestamps()
    end

  end
end
