class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validate :valid_release_year? 
  validates :artist_name, presence: true 
end


def valid_release_year?
  return true unless released

  year = release_year.to_i
  if year.zero?
    errors.add(:release_year, 'must be number')
  elsif year > Date.today.year
    errors.add(:release_year, 'must be in the past')
  end

end