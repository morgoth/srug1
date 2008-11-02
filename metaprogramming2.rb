class Song
  attr_accessor :name, :duration
end

song = Song.new
song.name, song.duration = "Miles Davis - So What", 565
puts "#{song.name}, #{song.duration} s"
