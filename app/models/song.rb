class Song < ApplicationRecord
    validates :title, :artist_name, presence: true
    validates :title, uniqueness: { scope: :release_year }
    validate  :year
    # validates :release_year, numericality: { less_than_or_equal_to: :year}
    validates :release_year, presence: true, if: :released?

  def released?
    self.released == true
  end
    
    def year
        if self.release_year != nil && self.release_year > DateTime.now.year 
            errors.add(:song, "can't be greater than current year")
        end
    end
end
