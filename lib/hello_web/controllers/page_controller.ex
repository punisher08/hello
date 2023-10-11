defmodule HelloWeb.PageController do
  use HelloWeb, :controller
  alias Hello.Catalog
  # alias Hello.Catalog.Product

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def test(conn, _params) do
    products = Catalog.list_products
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :test, products: products)
  end
end
