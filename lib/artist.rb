class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    condition = false
    @@all.each do |artist|
      if artist.name == self.name
        condition = true
      end
    end
    if condition == false
      @@all << self
    end
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)

    all_uniq = @@all.uniq

    artist = all_uniq.find {|artist| artist if artist.name == artist_name}

    if all_uniq.find {|artist| artist if artist.name == artist_name} == nil
      self.new(artist_name)
    else
      artist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


  end
