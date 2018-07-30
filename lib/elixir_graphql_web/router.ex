defmodule ElixirGraphqlWeb.Router do
  use ElixirGraphqlWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", ElixirGraphqlWeb do
    pipe_through(:api)
  end

  forward(
    "/graphiql",
    Absinthe.Plug.GraphiQL,
    schema: ElixirGraphqlWeb.Schema
  )
end
