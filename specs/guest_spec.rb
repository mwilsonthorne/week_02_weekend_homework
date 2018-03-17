require("minitest/autorun")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class GuestTest < MiniTest::Test

def setup
  songs = Song.new("Shout", "Tears for Fears")
  @guest1 = Guest.new("Matthew", 10)
  @room1 = Room.new(102, @guest1, songs, 5)
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


end
