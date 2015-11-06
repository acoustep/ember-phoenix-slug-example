defmodule Api.Product do
  use Api.Web, :model

  schema "products" do
    field :name, :string
    field :slug, :string
    field :blurb, :string
    field :preview, :string
    field :featured, :boolean, default: false

    timestamps
  end

  @required_fields ~w(name slug blurb preview featured)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
