defmodule Cheep.Repo do
  use Ecto.Repo,
    otp_app: :cheep,
    adapter: Ecto.Adapters.Postgres
end
