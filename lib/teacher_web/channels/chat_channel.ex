defmodule TeacherWeb.ChatChannel do
  use TeacherWeb, :channel

  alias Teacher.Chats

  def join("chat:" <> _room, _payload, socket) do
    {:ok, socket}
  end

  def handle_in("shout", payload, socket) do
    "chat:" <> room = socket.topic
    payload = Map.merge(payload, %{"room" => room})
    Chats.create_message(payload)
    broadcast socket, "shout", payload
    {:noreply, socket}
  end

end
