require("minitest/autorun")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

def setup
  @guest1 = Guest.new("Matthew", 10)
end

def test_guest_name
  assert_equal("Matthew", @guest1.guest_name)
end

def test_guest_wallet
  assert_equal(10, @guest1.guest_wallet)
end




end
