class Genre
attr_accessor :name, :songs, :genre

@@all = []
  def initialize
    @name = name
    @genre = genre
    @@all << self
end
end
