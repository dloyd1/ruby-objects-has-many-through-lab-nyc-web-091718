#require 'pry'
class Artist
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

def initialize(name)
  @name = name
  @@all << self
end

def new_song(name, genre)
  Song.new(name, self, genre)
end

def songs
  Song.all.select { |x| x.artist == self}
end

def genres
   songs.map(&:genre)
end

end #end of class

#binding.pry
