class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if !self.artist.nil?
      self.artist.name
    end
  end

  def artist_name=(name)
    @artist = Artist.find_by(name: name)
    @artist ? self.artist = @artist : self.artist = Artist.create(name: name) 
  end
end
