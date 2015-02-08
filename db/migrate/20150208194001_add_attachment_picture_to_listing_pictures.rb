class AddAttachmentPictureToListingPictures < ActiveRecord::Migration
  def self.up
    change_table :listing_pictures do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :listing_pictures, :picture
  end
end
