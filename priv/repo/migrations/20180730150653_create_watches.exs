defmodule ElixirGraphql.Repo.Migrations.CreateWatches do
  use Ecto.Migration

  def change do
    create table(:watches) do
      add :model_number, :string
      add :brand, :string
      add :series, :string

      timestamps()
    end

  end
end
