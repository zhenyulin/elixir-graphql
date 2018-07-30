defmodule ElixirGraphql.Deal do
  use Ecto.Schema
  import Ecto.Changeset

  schema "deals" do
    belongs_to(:auction, ElixirGraphql.Auction)
    field(:price, :integer)
    field(:watch_id, :id)

    timestamps()
  end

  @doc false
  def changeset(deal, attrs) do
    deal
    |> cast(attrs, [:price])
    |> validate_required([:price])
  end
end
