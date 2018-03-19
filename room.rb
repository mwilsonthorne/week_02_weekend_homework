class Room

attr_reader :room_name, :room_occupants, :room_playlist, :room_fee

def initialize(room_name, room_occupants, room_playlist, room_fee)
  @room_name = room_name
  @room_occupants = room_occupants
  @room_playlist = room_playlist
  @room_fee = room_fee
end

def add_song_to_playlist(song)
  @room_playlist << song
end

def add_guest_to_room(guest)
  @room_occupants << guest
end

def remove_guest_from_room(guest)
  @room_occupants.delete(guest)
end

def room_at_capacity?(guest)
    if guest.length >= 3
      return true
    else
      return false
    end
end

def fav_song_is_played?(song)
  if song == @room_playlist
    return "Whoo!"
  end
end

end
