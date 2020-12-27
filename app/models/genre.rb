class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    a = self.songs.map {|song| song.artist}
    a.uniq.count
  end

  def all_artist_names
    a = self.songs.map {|song| song.artist.name}
    a.uniq
  end
end
