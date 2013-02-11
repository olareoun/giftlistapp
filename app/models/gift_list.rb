class GiftList < ActiveRecord::Base
  attr_accessible :description, :title, :creator

  has_one :creator, :class_name => "User", :foreign_key => 'creator_id'

  validates :creator, :presence => true
  validates :description, :presence => true
  validates :title, :presence => true

  has_many :gifts, :dependent => :destroy

  belongs_to :creator, :class_name => 'User', :foreign_key => 'creator_id'
end
