defmodule Doodlemob.Doodle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "doodles" do
    field :image_data, :string
    field :seat_info, :string

    timestamps()
  end

  @doc false
  def changeset(doodle, attrs) do
    doodle
    |> cast(attrs, [:image_data, :seat_info])
    |> validate_required([:image_data, :seat_info])
  end
end
