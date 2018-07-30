defmodule ElixirGraphql.Repo.Migrations.CreateDeals do
  use Ecto.Migration

  def change do
    create table(:deals) do
      add :price, :integer
      add :auction_id, references(:auctions, on_delete: :nothing)
      add :watch_id, references(:watches, on_delete: :nothing)

      timestamps()
    end

    create index(:deals, [:auction_id])
    create index(:deals, [:watch_id])
  end
end
