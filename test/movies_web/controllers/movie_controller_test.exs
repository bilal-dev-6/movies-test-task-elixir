defmodule MoviesWeb.MovieControllerTest do
  use MoviesWeb.ConnCase

  test "get /api/movieByTitle returns json response" do
    conn = get(build_conn(), "/api/movieByTitle")
    assert json_response(conn, 200)
  end

  test "get /api/movieByDate returns json response" do
    conn = get(build_conn(), "/api/movieByDate")
    assert json_response(conn, 200)
  end

  test "get /api/movieByRating returns json response" do
    conn = get(build_conn(), "/api/movieByRating")
    assert json_response(conn, 200)
  end

  test "get /api/movieSearch returns json response" do
    conn = get(build_conn(), "/api/movieSearch")
    assert json_response(conn, 200)
  end

  test "get /api/getMovies returns json response" do
    conn = get(build_conn(), "/api/getMovies")
    assert json_response(conn, 200)
  end
end
