class Comment < ApplicationRecord
   # paginates_per 4  # Not sure that this will work but in here to try it out - Guy
    belongs_to :user
    belongs_to :place
    
    RATINGS = {
        'one star': '1_star',
        'two stars': '2_stars',
        'three stars': '3_stars',
        'four stars': '4_stars',
        'five stars': '5_stars'
    }
    
    def humanized_rating
        RATINGS.invert[self.rating]
    end
    
end
