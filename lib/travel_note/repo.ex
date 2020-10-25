defmodule TravelNote.Repo do
  use Ecto.Repo,
    otp_app: :travel_note,
    adapter: Ecto.Adapters.Postgres
end
