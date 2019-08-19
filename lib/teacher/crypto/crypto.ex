defmodule Teacher.Crypto do
  def fetch(id) do
    id
    |> String.upcase()
    |> url()
    |> HTTPoison.get!()
    |> Map.get(:body)
    |> Jason.decode!()
  end

  defp url(id) do
    "http://coincap.io/page/" <> id
  end
end
