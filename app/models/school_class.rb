class SchoolClass < ActiveRecord::Base
  def klass
    self.title + " " + self.room_number.to_s
  end
end