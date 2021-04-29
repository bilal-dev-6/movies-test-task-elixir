defmodule Movies.Movie do

  import Ecto.Query, warn: false

  alias Movies.Repo

  alias Movies.Movie.Ratings
  alias Movies.Movie.Movies


  def add_rating(attrs \\ %{}) do
    %Ratings{}
    |> Ratings.changeset(attrs)
    |> Repo.insert()
  end


  def get_movies() do
    Repo.all(
      from m in Movies,
      select: %{title: m.title, year: m.year, genre: m.genre, duration: m.duration, director: m.director, avg_vote: m.avg_vote, votes: m.votes}
    )
  end



end
