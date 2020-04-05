class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
<<<<<<< HEAD
     drake = Artist.find_or_create_by(name: "Drake")
     self.artist = drake
=======
     Artist.find_or_create_by(name: "Drake")
>>>>>>> 541205519ca53f023af8f1fdc38cf2f4e11bcb38
   end
end