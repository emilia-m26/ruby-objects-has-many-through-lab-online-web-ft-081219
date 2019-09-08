class Genre 
  @@all=[]
  
  attr_accessor :name, :songs, :artist
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|s| s.genre==self}
  end
  
  def artists 
    self.songs.collect {|s| s.artist}
  end
end