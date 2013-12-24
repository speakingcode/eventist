class Place < ActiveRecord::Base
  belongs_to :city

  has_many :events

  validates :name,
            :presence => true

  validates :lat,
            :presence     => true,
            :numericality => true

  validates :lng,
            :presence     => true,
            :numericality => true

  validates :city_id,
            :presence     => true,
            :numericality => { :only_integer => true }


  validates :zip,
            :numericality => { :only_integer => true }

end
