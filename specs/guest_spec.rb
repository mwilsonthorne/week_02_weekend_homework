require("minitest/autorun")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class GuestTest < MiniTest::Test

def setup
  song = Song.new("Shout", "Tears for Fears")
  @fav_song1 = Song.new("Out of Space", "The Prodigy")
  fav_song2 = Song.new("Inch of Dust", "Future Islands")
  fav_song3 = Song.new("Intro", "The XX")
  fav_song_array = [@fav_song1, fav_song2, fav_song3]
  @guest1 = Guest.new("Matthew", 10, "How Soon Is Now?")
  @room1 = Room.new(102, @guest1, song, 5)
end

def test_guest_name
  assert_equal("Matthew", @guest1.guest_name)
end

def test_guest_wallet
  assert_equal(10, @guest1.guest_wallet)
end

def test_pay_entry_fee()
  @guest1.pay_entry_fee(@room1)
  assert_equal(5, @guest1.guest_wallet)
end

def test_fav_song
  assert_equal("How Soon Is Now?", @guest1.fav_song)
end


def test_fav_song_is_played()
  @guest1.fav_song_is_played?(@fav_song1)
  assert_equal("Whoo!", @guest1.fav_song_is_played?)
end

end
