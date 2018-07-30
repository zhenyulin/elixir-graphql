defmodule ElixirGraphql.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: ElixirGraphql.Repo

  object :watch do
    field(:id, :id)
    field(:brand, :string)
    field(:series, :string)
    field(:model_number, :string)
    field(:deals, list_of(:deal), resolve: assoc(:deals))
  end

  object :deal do
    field(:price, :integer)
    field(:auction, :auction, resolve: assoc(:auction))
  end

  object :auction do
    # field(:date, :date)
    field(:host, :string)
  end
end
