class Song

attr_accessor :name, :artist

@@all = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@all << self
end


def songs
Song.all.select {|song| song.artist == self}
end

def genres
  songs.map {|song| song.genre}
end

def self.all
  @@all
end


def new_song(name, genre)
  Song.new(nam)

end

end
