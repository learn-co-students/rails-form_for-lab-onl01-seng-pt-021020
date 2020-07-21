class SchoolClass < ActiveRecord::Base
    def display
        self.title + " " + self.room_number.to_s
    end

end 