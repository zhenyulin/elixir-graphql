defmodule ElixirGraphql.Watch do
  use Ecto.Schema
  import Ecto.Changeset

  schema "watches" do
    has_many(:deals, ElixirGraphql.Deal)
    field(:brand, :string)
    field(:model_number, :string)
    field(:series, :string)

    timestamps()
  end

  @doc false
  def changeset(watch, attrs) do
    watch
    |> cast(attrs, [:model_number, :brand, :series])
    |> validate_required([:model_number, :brand, :series])
  end
end
