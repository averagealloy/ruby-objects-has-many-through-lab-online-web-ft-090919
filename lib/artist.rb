class Artist
attr_accessor :name

def initialize
@name = name
@@all << self
end

def new_song (name, genre)
   song = Song.new(name, self, genre)
end

def self.all
@@all
end

def songs
Song.all.aelect {|song| song.artist == self }
end

def genre
  songs.collect {|song| song.genre}
end
end
