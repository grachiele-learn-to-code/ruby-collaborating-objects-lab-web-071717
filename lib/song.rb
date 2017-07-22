class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist_song_genre = file_name.split(" - ")
    new_song = self.new(artist_song_genre[1])
    new_song.artist = Artist.new(artist_song_genre[0])
    new_song
  end

end
