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
S
end

def self.all
  @@all
end


end
