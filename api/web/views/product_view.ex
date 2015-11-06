defmodule Api.ProductView do
  use Api.Web, :view

  def render("index.json", %{products: products}) do
    %{products: render_many(products, Api.ProductView, "product.json")}
  end

  def render("show.json", %{product: product}) do
    %{product: render_one(product, Api.ProductView, "product.json")}
  end

  def render("product.json", %{product: product}) do
    %{id: product.id,
      name: product.name,
      slug: product.slug,
      blurb: product.blurb,
      preview: product.preview,
      featured: product.featured}
  end
end
