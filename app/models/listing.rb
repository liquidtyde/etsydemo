class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, 
  	:default_url => "default.jpg", 
  	:storage => :dropbox,
  	:dropbox_credentials => Rails.root.join("config/dropbox.yml")
  	
###  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
#	do_not_validate_attachment_file_type :image
end
