require("minitest/autorun")
require_relative("../song.rb")

class SongTest < MiniTest::Test

def setup
  @song1 = Song.new("This Charming Man", "The Smiths")
end

def test_song_title
  assert_equal("This Charming Man", @song1.song_title)
end

def test_song_artist
  assert_equal("The Smiths", @song1.song_artist)
end

end
