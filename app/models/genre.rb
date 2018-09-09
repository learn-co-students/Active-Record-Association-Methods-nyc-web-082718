class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a
    Song.all.where("genre_id == 1").count
  end

  def artist_count
    # return the number of artists associated with the genre
    Song.all.where("genre_id == 1").count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    Song.all.map do |song|
      song.artist.name
    end
  end
end
