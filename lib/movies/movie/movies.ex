defmodule Movies.Movie.Movies do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Jason.Encoder, only: [:actor, :avg_vote, :budget, :country, :date_published, :description, :director, :duration, :genre, :imdb_title_id, :language, :metascore, :original_title, :production_company, :reviews_from_critics, :reviews_from_users, :title, :usa_gross_income, :votes, :worldwide_gross_income, :writer, :year]}
  schema "movies" do
    field :actor, :string
    field :avg_vote, :string
    field :budget, :string
    field :country, :string
    field :date_published, :string
    field :description, :string
    field :director, :string
    field :duration, :string
    field :genre, :string
    field :imdb_title_id, :string
    field :language, :string
    field :metascore, :string
    field :original_title, :string
    field :production_company, :string
    field :reviews_from_critics, :string
    field :reviews_from_users, :string
    field :title, :string
    field :usa_gross_income, :string
    field :votes, :string
    field :worldwide_gross_income, :string
    field :writer, :string
    field :year, :string

    timestamps()
  end

  @doc false
  def changeset(movies, attrs) do
    movies
    |> cast(attrs, [:imdb_title_id, :title, :original_title, :year, :date_published, :genre, :duration, :country, :language, :director, :writer, :production_company, :actor, :description, :avg_vote, :votes, :budget, :usa_gross_income, :worldwide_gross_income, :metascore, :reviews_from_users, :reviews_from_critics])
    |> validate_required([:imdb_title_id, :title, :original_title, :year, :date_published, :genre, :duration, :country, :language, :director, :writer, :production_company, :actor, :description, :avg_vote, :votes, :budget, :usa_gross_income, :worldwide_gross_income, :metascore, :reviews_from_users, :reviews_from_critics])
  end
end
