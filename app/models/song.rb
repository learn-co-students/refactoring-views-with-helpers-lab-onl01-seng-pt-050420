class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    #Artist.find_by(self.artist_id).name = name
  end
end
