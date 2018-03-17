class Room

attr_reader :room_name, :room_occupants, :room_playlist

def initialize(room_name, room_occupants, room_playlist)
  @room_name = room_name
  @room_occupants = room_occupants
  @room_playlist = room_playlist
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









end
