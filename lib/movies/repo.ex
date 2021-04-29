defmodule Movies.Repo do
  use Ecto.Repo,
    otp_app: :movies,
    adapter: Ecto.Adapters.Postgres
    use Scrivener, page_size: 10

end
