defmodule Api.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :slug, :string
      add :blurb, :text
      add :preview, :string
      add :featured, :boolean, default: false

      timestamps
    end

  end
end
