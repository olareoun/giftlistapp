class Gift < ActiveRecord::Base
  belongs_to :gift_list
  attr_accessible :description

  validates :description, :presence => true
end
