defmodule Movies.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :imdb_title_id, :string
      add :title, :text
      add :original_title, :text
      add :year, :string
      add :date_published, :string
      add :genre, :string
      add :duration, :string
      add :country, :string
      add :language, :string
      add :director, :text
      add :writer, :text
      add :production_company, :string
      add :actor, :text
      add :description, :text
      add :avg_vote, :string
      add :votes, :string
      add :budget, :string
      add :usa_gross_income, :string
      add :worldwide_gross_income, :string
      add :metascore, :string
      add :reviews_from_users, :string
      add :reviews_from_critics, :string

      timestamps()
    end

  end
end
