class ListingPicture < ActiveRecord::Base
  belongs_to :listing

  has_attached_file :picture, :styles => { :large => "500x500#", :medium => "300x300#", :thumb => "50x50#" }, :default_url => "/images/:style/missing.png"


  validates_attachment_content_type :picture, :content_type => /\Aimage/
# Validate filename
  validates_attachment_file_name :picture, :matches => [/png\Z/, /jpe?g\Z/]
# Explicitly do not validate
  do_not_validate_attachment_file_type :picture
end
