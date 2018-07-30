defmodule ElixirGraphql.Repo.Migrations.CreateAuctions do
  use Ecto.Migration

  def change do
    create table(:auctions) do
      add :date, :date
      add :host, :string

      timestamps()
    end

  end
end
