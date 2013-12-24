class EventCategory < ActiveRecord::Base
  belongs_to :event

  belongs_to :category

  validates :event_id,
            :presence     => true,
            :numericality => { :only_integer => true }

  validates :category_id ,
            :presence     => true,
            :numericality => { :only_integer => true }
end
