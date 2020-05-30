class Artist 
  @@all = []
  
  def initialize name 
    @name = name 
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song name
    song = Song.new(song)
    song.artist = self
  end 
  
  def songs 
    Song.all.select{|song|song.artist = self}
  end
  
  def self.find_or_create_by_name name
    if self.name
      self
    else
      Artist.new name
    end
  end
  
  def print_songs
    songs
  end
  
end