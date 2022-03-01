class Movie < ActiveRecord::Base
    def self.all_ratings
        return ['G', 'PG', 'PG-13', 'R']
    end
    
    def self.with_ratings(ratings)
        rate = ratings.map{|string| string.upcase}
        return Movie.where(rating: rate)
    end
end
