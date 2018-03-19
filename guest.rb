class Guest

attr_reader :guest_name, :guest_wallet, :fav_song

def initialize(guest_name, guest_wallet, fav_song)
  @guest_name = guest_name
  @guest_wallet = guest_wallet
  @fav_song = fav_song
end

def pay_entry_fee(fee)
   @guest_wallet -= fee.room_fee()
end

def fav_song_is_played?(song)
  if song == @fav_song
    return "Whoo!"
  end
end

end
