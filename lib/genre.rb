class Genre
attr_accessor :name, 

@@all = []
  def initialize(genre)
    @name = name
    @genre = genre
    @@all << self
  end
end
