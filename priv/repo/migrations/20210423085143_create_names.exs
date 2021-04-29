defmodule Movies.Repo.Migrations.CreateNames do
  use Ecto.Migration

  def change do
    create table(:names) do
      add :imdb_name_id, :string
      add :name, :string
      add :birth_name, :string
      add :height, :string
      add :bio, :text
      add :birth_details, :text
      add :date_of_birth, :string
      add :place_of_birth, :string
      add :death_details, :text
      add :date_of_death, :string
      add :place_of_death, :text
      add :reason_of_death, :string
      add :spouses_string, :text
      add :spouses, :string
      add :divorces, :string
      add :spouses_with_children, :string
      add :children, :string

      timestamps()
    end

  end
end
