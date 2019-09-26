class Genre
attr_accessor :name, :songs

@@all = []
  def initialize(genre)
    @name = name
    @genre = genre
    @@all << self
  end
end
