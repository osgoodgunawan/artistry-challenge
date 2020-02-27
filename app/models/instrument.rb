class Instrument < ApplicationRecord
  has_many :artist_instruments
  has_many :artists, through: :artist_instruments

  def combined_name
    "#{self.name } - #{self.classification}"
  end 
end
