class Tag < ActiveRecord::Base
  has_many  :tag_events

  has_many  :events,
            :through  => :tag_events

  validates :name,
            :presence => true
end
