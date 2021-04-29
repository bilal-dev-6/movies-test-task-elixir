defmodule MoviesWeb.Router do
  use MoviesWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MoviesWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/movieByTitle", MovieController, :getMoviesByTitle
    get "/movieByDate", MovieController, :getMoviesByDate
    get "/movieByRating", MovieController, :getMoviesByRating
    get "/movieSearch", MovieController, :movieSearch
    get "/getMovies", MovieController, :getMovies
    get "/getMovieByID", MovieController, :getMovieByID

  end

  # Other scopes may use custom stacks.
  # scope "/api", MoviesWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: MoviesWeb.Telemetry
    end

    scope "/api", MoviesWeb do
      pipe_through :api
      # this line bellow is added
      get "/movieByTitle", MovieController, :getMoviesByTitle
      get "/movieByDate", MovieController, :getMoviesByDate
      get "/movieByRating", MovieController, :getMoviesByRating
      get "/movieSearch", MovieController, :movieSearch
      get "/getMovies", MovieController, :getMovies
      get "/getMovieByID", MovieController, :getMovieByID


    end
  end
end
