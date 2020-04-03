class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, 
  through: :songs

  def get_genre_of_first_song
    self.genres.first
  end 

  def song_count
    self.songs.count
  end

  def genre_count
    self.genres.count
  end
  
  def find_or_create_by(name:)
    if !artist
      Artist.new(name: name)
    else
      artist = self.create(name: name)
    end 
    artist
  end

end
