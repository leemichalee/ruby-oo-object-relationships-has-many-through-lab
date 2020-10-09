class Genre
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all {|name| song.genre == self}
    end

    def artists
        songs.map(&:artist)
    end

    def add_song(new_song)
        songs << new_song
    end
end