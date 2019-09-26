class Genre
attr_accessor :name

@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
def self.all
  @@all
end


def new_song(name, genre)
  Song.new(name, self, genre )
end


def songs
Song.all.select {|song| song.genr == self}
end

def artist
  songs.collect {|songs| songs.artist}

end
