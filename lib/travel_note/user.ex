defmodule TravelNote.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string, virtual: true
    field :encrypted_password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    required_fields = [:name, :email, :password]

    user
    |> cast(attrs, [:name, :email, :password, :encrypted_password])
    |> validate_required(required_fields)
  end
end
