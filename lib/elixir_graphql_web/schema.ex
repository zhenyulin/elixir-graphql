defmodule ElixirGraphqlWeb.Schema do
  use Absinthe.Schema
  import_types(ElixirGraphqlWeb.Schema.Types)

  query do
    field :watch, :watch do
      arg(:id, non_null(:id))

      resolve(fn %{id: id}, _info ->
        case ElixirGraphql.Repo.get(ElixirGraphql.Watch, id) do
          nil -> {:error, :not_found}
          watch -> {:ok, watch}
        end
      end)
    end

    field :watches, list_of(:watch) do
      resolve(fn _params, _info ->
        {:ok, ElixirGraphql.Repo.all(ElixirGraphql.Watch)}
      end)
    end
  end
end
