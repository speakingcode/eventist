class City < ActiveRecord::Base
  belongs_to  :state

  has_many    :places

  has_many    :events,
              :through    => :places

  validates :name,
            :presence     => true

  validates :state_id,
            :presence     => true,
            :numericality => { :only_integer => true }
end
