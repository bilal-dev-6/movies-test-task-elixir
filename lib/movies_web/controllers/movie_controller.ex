defmodule MoviesWeb.MovieController do
  use MoviesWeb, :controller



  import Ecto.Query, warn: false


  alias Movies.Repo
  alias Movies.Movie.Movies


  def getMoviesByTitle(conn, params) do
    # require Protocol
    # Protocol.derive(Jason.Encoder, Scrivener.Page, only: [:title, :year, :genre, :duration, :director, :avg_vote, :votes])
    page_num = get_in(params, ["page", "number"])

   query =    from m in Movies,
      order_by: m.title,
      select: %{imdb_title_id: m.imdb_title_id,title: m.title, year: m.year, genre: m.genre, duration: m.duration, director: m.director, avg_vote: m.avg_vote, votes: m.votes}

      users = Repo.paginate(query, page: page_num)
    json conn, Poison.encode!(users)
  end

  def getMoviesByDate(conn, params) do

    page_num = get_in(params, ["page", "number"])

   query =    from m in Movies,
      order_by: m.year,
      select: %{imdb_title_id: m.imdb_title_id, title: m.title, year: m.year, genre: m.genre, duration: m.duration, director: m.director, avg_vote: m.avg_vote, votes: m.votes}

      users = Repo.paginate(query, page: page_num)
    json conn, Poison.encode!(users)
  end

  def getMoviesByRating(conn, params) do

    page_num = get_in(params, ["page", "number"])

   query =    from m in Movies,
      order_by: [{:desc,m.avg_vote}],
      select: %{imdb_title_id: m.imdb_title_id, title: m.title, year: m.year, genre: m.genre, duration: m.duration, director: m.director, avg_vote: m.avg_vote, votes: m.votes}

      users = Repo.paginate(query, page: page_num)
    json conn, Poison.encode!(users)
  end

  def movieSearch(conn, params) do

    page_num = get_in(params, ["page", "number"])
    value = get_in(params, ["value"])
    # || m.director,^"%#{value }%" || m.actors,^"%#{value }%"
   query =    from m in Movies,
      where: ilike(m.title,^"%#{value }%") or ilike( m.director,^"%#{value }%") or ilike(m.actor,^"%#{value }%"),
      select: %{imdb_title_id: m.imdb_title_id, title: m.title, year: m.year, genre: m.genre, duration: m.duration, director: m.director, avg_vote: m.avg_vote, votes: m.votes}

      users = Repo.paginate(query, page: page_num)
    json conn, Poison.encode!(users)
  end


  def getMovieByID(conn, params) do

    id = get_in(params, ["id"])
    # || m.director,^"%#{value }%" || m.actors,^"%#{value }%"
   query =    from m in Movies,
      where: (m.imdb_title_id == ^id),
      select: m
    users = Repo.paginate(query)
    json conn, Poison.encode!(users)
  end




  def getMovies(conn, params) do

    page_num = get_in(params, ["page", "number"])


      users = Repo.paginate(Movies, page: page_num)
      json conn , Poison.encode!(users)
  end

end
