defmodule ElixirGraphql.Auction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "auctions" do
    field(:date, :date)
    field(:host, :string)

    timestamps()
  end

  @doc false
  def changeset(auction, attrs) do
    auction
    |> cast(attrs, [:date, :host])
    |> validate_required([:date, :host])
  end
end
