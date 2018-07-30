# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElixirGraphql.Repo.insert!(%ElixirGraphql.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

### Watches

speed_master =
  ElixirGraphql.Repo.insert!(%ElixirGraphql.Watch{
    brand: "Omega",
    model_number: "123123A",
    series: "Speed Master"
  })

submariner =
  ElixirGraphql.Repo.insert!(%ElixirGraphql.Watch{
    brand: "Rolex",
    model_number: "1001166G",
    series: "Submariner"
  })

### Auctions

sotheby =
  ElixirGraphql.Repo.insert!(%ElixirGraphql.Auction{
    host: "Sotheby's",
    date: ~D[2018-01-01]
  })

phillips =
  ElixirGraphql.Repo.insert!(%ElixirGraphql.Auction{
    host: "Phillips",
    date: ~D[2018-03-01]
  })

### Deals

ElixirGraphql.Repo.insert!(%ElixirGraphql.Deal{
  watch_id: speed_master.id,
  auction_id: sotheby.id,
  price: 1000
})

ElixirGraphql.Repo.insert!(%ElixirGraphql.Deal{
  watch_id: submariner.id,
  auction_id: sotheby.id,
  price: 6030
})

ElixirGraphql.Repo.insert!(%ElixirGraphql.Deal{
  watch_id: submariner.id,
  auction_id: phillips.id,
  price: 7000
})
