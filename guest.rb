class Guest

attr_reader :guest_name, :guest_wallet

def initialize(guest_name, guest_wallet)
  @guest_name = guest_name
  @guest_wallet = guest_wallet
end

def pay_entry_fee(fee)
   @guest_wallet -= fee.room_fee()
end

end
