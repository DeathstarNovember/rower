defmodule Rower.Repo do
  use Ecto.Repo,
    otp_app: :rower,
    adapter: Ecto.Adapters.Postgres
end
