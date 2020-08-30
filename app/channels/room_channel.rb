class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_for "room"
  end

  def receive(data)
    print("------------")
    print("------------")
    print("WE GOT SOME CODE")
    print("------------")
    print("------------")
    RoomChannel.broadcast_to("room", {room: "room", message: "wot"})
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
