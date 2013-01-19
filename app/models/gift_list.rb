class GiftList < ActiveRecord::Base
  attr_accessible :description, :title

  validates :description, :presence => true
  validates :title, :presence => true

  has_many :gifts, :dependent => :destroy
end
