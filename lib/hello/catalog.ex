defmodule Hello.Catalog do
  alias Hello.Catalog.Product
  alias Hello.Repo

  def list_products do
    Product
    |> Repo.all()
  end

  def test do
    create_product(%{
      name: "Cellphone",
      description: "Iphone",
      price: 50_000
    })
  end

  def create_product(attrs \\ %{}) do
    %Product{}
    |> Product.changeset(attrs)
    |> Repo.insert()
  end
end
