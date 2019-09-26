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
Song.all..select {|songs |}
end

def self.all
  @@all
end


end
