# Movies

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`



  To Run Test:
  mix test test/movies_web/controllers/movie_controller_test.exs


  UNZIP AND PLACE THE CSV FILES IN THE FOLLOWING DIRECTORY FOR SEEDING:

         ---> priv/repo/Data


  Use NGROK to connect with frontend

          1)install ngrok
 
          2)ngrok http 4000
           you will get a link, use that from front end.


 ----->ALSO there is a postman collection in the repo to test just the backend


Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
