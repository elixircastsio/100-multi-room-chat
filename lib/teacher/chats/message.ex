defmodule Teacher.Chats.Message do
  use Ecto.Schema
  import Ecto.Changeset


  schema "messages" do
    field :body, :string
    field :name, :string
    field :room, :string

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:name, :body, :room])
    |> validate_required([:name, :body, :room])
  end
end
