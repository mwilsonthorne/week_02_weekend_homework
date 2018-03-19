require("minitest/autorun")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

def setup
  @guest1 = Guest.new("Sandy", 100, "Crazy Nights")
  guest2 = Guest.new("Keith", 20, "Starman")
  guest3 = Guest.new("Pawel", 10, "Is There Life on Mars?")
  @guest_array = [@guest1, guest2, guest3]
  @guest_array2 = [@guest1, guest2]
  @song1 = Song.new("Out of Space", "The Prodigy")
  song2 = Song.new("Inch of Dust", "Future Islands")
  song3 = Song.new("Intro", "The XX")
  song_array = [@song1, song2, song3]
  @room1 = Room.new(101, @guest_array, song_array, 5)
  @room2 = Room.new(101, @guest_array2, song_array, 5)
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

def test_room_at_capacity__returns_true
  assert_equal(true, @room1.room_at_capacity?(@guest_array))
end

def test_room_at_capacity__returns_false
  assert_equal(false, @room2.room_at_capacity?(@guest_array2))
end

def test_fav_song_is_played?
  @guest1.fav_song_is_played?(@song1)
  assert_equal("Whoo!", @room1.room_playlist)
end

end
