# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Movies.Repo.insert!(%Movies.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Movies.Repo
alias Movies.Movie.Ratings
alias Movies.Movie.Names
alias Movies.Movie.Principals
alias Movies.Movie.Movies




path = Path.join(__DIR__,"/Data/IMDb ratings.csv")
File.stream!(path)
|> Stream.drop(1)
|> CSV.decode()
|> Enum.each(fn
    {:ok, [imdb_title_id, weighted_average_vote, total_votes, mean_vote, median_vote, votes_10, votes_9, votes_8, votes_7, votes_6, votes_5, votes_4, votes_3, votes_2, votes_1, allgenders_0age_avg_vote, allgenders_0age_votes, allgenders_18age_avg_vote, allgenders_18age_votes, allgenders_30age_avg_vote, allgenders_30age_votes, allgenders_45age_avg_vote, allgenders_45age_votes, males_allages_avg_vote, males_allages_votes, males_0age_avg_vote, males_0age_votes, males_18age_avg_vote, males_18age_votes, males_30age_avg_vote, males_30age_votes, males_45age_avg_vote, males_45age_votes, females_allages_avg_vote, females_allages_votes, females_0age_avg_vote, females_0age_votes, females_18age_avg_vote, females_18age_votes, females_30age_avg_vote, females_30age_votes, females_45age_avg_vote, females_45age_votes, top1000_voters_rating, top1000_voters_votes, us_voters_rating, us_voters_votes, non_us_voters_rating, non_us_voters_votes]} ->
                  Repo.insert!(%Ratings
                  {
                    imdb_title_id: imdb_title_id,
                    weighted_average_vote: weighted_average_vote,
                    total_votes: total_votes,
                    mean_vote: mean_vote,
                    median_vote: median_vote,
                    votes_10: votes_10,
                    votes_9: votes_9,
                    votes_8: votes_8,
                    votes_7: votes_7,
                    votes_6: votes_6,
                    votes_5: votes_5,
                    votes_4: votes_4,
                    votes_3: votes_3,
                    votes_2: votes_2,
                    votes_1: votes_1,
                    allgenders_0age_avg_vote: allgenders_0age_avg_vote,
                    allgenders_0age_votes: allgenders_0age_votes,
                    allgenders_18age_avg_vote: allgenders_18age_avg_vote,
                    allgenders_18age_votes: allgenders_18age_votes,
                    allgenders_30age_avg_vote: allgenders_30age_avg_vote,
                    allgenders_30age_votes: allgenders_30age_votes,
                    allgenders_45age_avg_vote: allgenders_45age_avg_vote,
                    allgenders_45age_votes: allgenders_45age_votes,
                    males_allages_avg_vote: males_allages_avg_vote,
                    males_allages_votes: males_allages_votes,
                    males_0age_avg_vote: males_0age_avg_vote,
                    males_0age_votes: males_0age_votes,
                    males_18age_avg_vote: males_18age_avg_vote,
                    males_18age_votes: males_18age_votes,
                    males_30age_avg_vote: males_30age_avg_vote,
                    males_30age_votes: males_30age_votes,
                    males_45age_avg_vote: males_45age_avg_vote,
                    males_45age_votes: males_45age_votes,
                    females_allages_avg_vote: females_allages_avg_vote,
                    females_allages_votes: females_allages_votes,
                    females_0age_avg_vote: females_0age_avg_vote,
                    females_0age_votes: females_0age_votes,
                    females_18age_avg_vote: females_18age_avg_vote,
                    females_18age_votes: females_18age_votes,
                    females_30age_avg_vote: females_30age_avg_vote,
                    females_30age_votes: females_30age_votes,
                    females_45age_avg_vote: females_45age_avg_vote,
                    females_45age_votes: females_45age_votes,
                    top1000_voters_rating: top1000_voters_rating,
                    top1000_voters_votes: top1000_voters_votes,
                    us_voters_rating: us_voters_rating,
                    us_voters_votes: us_voters_votes,
                    non_us_voters_rating: non_us_voters_rating,
                    non_us_voters_votes: non_us_voters_votes
                    })
           {:error, _message} ->
              IO.puts "Ratings data is not inserted"
              # Whatever you want to do with invalid rows
      end)


path = Path.join(__DIR__,"/Data/IMDb movies.csv")
File.stream!(path)
|> Stream.drop(1)
|> CSV.decode()
|> Enum.each(fn
    {:ok, [imdb_title_id, title, original_title, year, date_published, genre, duration, country, language, director, writer, production_company, actor, description, avg_vote, votes, budget, usa_gross_income, worldwide_gross_income, metascore, reviews_from_users, reviews_from_critics]} ->
                  Repo.insert!(%Movies
                  {
                    imdb_title_id: imdb_title_id,
                    title: title,
                    original_title: original_title,
                    year: year,
                    date_published: date_published,
                    genre: genre,
                    duration: duration,
                    country: country,
                    language: language,
                    director: director,
                    writer: writer,
                    production_company: production_company,
                    actor: actor,
                    description: description,
                    avg_vote: avg_vote,
                    votes: votes,
                    budget: budget,
                    usa_gross_income: usa_gross_income,
                    worldwide_gross_income: worldwide_gross_income,
                    metascore: metascore,
                    reviews_from_users: reviews_from_users,
                    reviews_from_critics: reviews_from_critics

                    })
           {:error, _message} ->
              IO.puts "Movies data is not inserted"
              # Whatever you want to do with invalid rows
      end)


path = Path.join(__DIR__,"/Data/IMDb names.csv")
File.stream!(path)
|> Stream.drop(1)
|> CSV.decode()
|> Enum.each(fn
    {:ok, [imdb_name_id, name, birth_name, height, bio, birth_details, date_of_birth, place_of_birth, death_details, date_of_death, place_of_death, reason_of_death, spouses_string, spouses, divorces, spouses_with_children, children]} ->
                  Repo.insert!(%Names
                  {

                    imdb_name_id: imdb_name_id,
                    name: name,
                    birth_name: birth_name,
                    height: height,
                    bio: bio,
                    birth_details: birth_details,
                    date_of_birth: date_of_birth,
                    place_of_birth: place_of_birth,
                    death_details: death_details,
                    date_of_death: date_of_death,
                    place_of_death: place_of_death,
                    reason_of_death: reason_of_death,
                    spouses_string: spouses_string,
                    spouses: spouses,
                    divorces: divorces,
                    spouses_with_children: spouses_with_children,
                    children: children

                    })
           {:error, _message} ->
              IO.puts "Names data is not inserted"
              # Whatever you want to do with invalid rows
      end)


path = Path.join(__DIR__,"/Data/IMDb title_principals.csv")
File.stream!(path)
|> Stream.drop(1)
|> CSV.decode()
|> Enum.each(fn
    {:ok, [imdb_title_id, ordering, imdb_name_id, category, job, characters]} ->
                  Repo.insert!(%Principals
                  {

                    imdb_title_id: imdb_title_id,
                    ordering: ordering,
                    imdb_name_id: imdb_name_id,
                    category: category,
                    job: job,
                    characters: characters

                    })
           {:error, _message} ->
              IO.puts "Principals data is not inserted"
              # Whatever you want to do with invalid rows
      end)
