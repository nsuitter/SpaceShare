class Listing < ActiveRecord::Base
  has_many :listing_pictures

  accepts_nested_attributes_for :listing_pictures
  
  validates :title, :presence => true
  validates :body, :presence => true
  validates :zip, :presence => true, numericality: { only_integer: true }

end
