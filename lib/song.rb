class Song
#will need an artist=() and artist method
#will need a class var that holds ALL instances of every song that's been created in an array - in order to access needs class method that returns the class var holding those instances self.all
#needs to know about all its song instances & song instances need to know about the artist class it belongs to
#artist_name will return the names of the artist of the given song - this should extend the has many/belongs to relationship we're buidling out ie artist_name should return song_title.artist.name

    @@all = []
    attr_accessor :name, :artist

    def initialize(name)
        
        @name = name
        @@all << self
        #should also push new instance into class var @@all
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist ? self.artist.name : nil
        #knows artists name
    end

end