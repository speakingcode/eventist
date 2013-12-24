class State < ActiveRecord::Base
  has_many :cities

  has_many :places,
           :through => :cities

  has_many :events,
           :through => :places

  
  validates :name,
            :presence => true

  validates :abbreviation,
            :presence => true
end
