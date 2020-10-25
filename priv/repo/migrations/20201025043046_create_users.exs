defmodule TravelNote.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :password, :string
      add :encrypted_password, :string

      timestamps()
    end
  end
end
