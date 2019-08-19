defmodule Teacher.Repo do
  use Ecto.Repo,
    otp_app: :teacher,
    adapter: Ecto.Adapters.Postgres
end
