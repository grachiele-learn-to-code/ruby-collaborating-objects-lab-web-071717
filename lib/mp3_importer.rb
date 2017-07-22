class MP3Importer

  attr_accessor :path, :files, :artist

  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def files
    @files = Dir.entries(path)[2..-1]
  end

  def import
    self.files.map do |file|
      artist_song_genre = file.split(" - ")
      artist = Artist.new(artist_song_genre[0])
      artist.save
      artist.add_song(artist_song_genre[1])
    end
  end


end
