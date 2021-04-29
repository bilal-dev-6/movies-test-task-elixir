defmodule Movies.Movie.Principals do
  use Ecto.Schema
  import Ecto.Changeset

  schema "principals" do
    field :category, :string
    field :characters, :string
    field :imdb_name_id, :string
    field :imdb_title_id, :string
    field :job, :string
    field :ordering, :string

    timestamps()
  end

  @doc false
  def changeset(principals, attrs) do
    principals
    |> cast(attrs, [:imdb_title_id, :ordering, :imdb_name_id, :category, :job, :characters])
    |> validate_required([:imdb_title_id, :ordering, :imdb_name_id, :category, :job, :characters])
  end
end
