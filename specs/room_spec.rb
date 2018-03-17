require("minitest/autorun")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

def setup
  @guest1 = Guest.new("Sandy")
  guest2 = Guest.new("Keith")
  guest3 = Guest.new("Pawel")
  guest_array = [@guest1, guest2, guest3]
  @song1 = Song.new("Out of Space", "The Prodigy")
  song2 = Song.new("Inch of Dust", "Future Islands")
  song3 = Song.new("Intro", "The XX")
  song_array = [@song1, song2, song3]
  @room1 = Room.new(101, guest_array, song_array)
end

def test_room_name
  assert_equal(101, @room1.room_name)
end

def test_room_occupants
  assert_equal(3, @room1.room_occupants.length)
end

def test_room_playlist
  assert_equal(3, @room1.room_playlist.length)
end

def test_add_song_to_playlist()
  @room1.add_song_to_playlist(@song1)
  assert_equal(4, @room1.room_playlist.count)
end

def test_add_guest_to_room()
  @room1.add_guest_to_room(@guest1)
  assert_equal(4, @room1.room_occupants.length)
end

def test_remove_guest_from_room()
  @room1.remove_guest_from_room(@guest1)
  assert_equal(2, @room1.room_occupants.length)
end



end
