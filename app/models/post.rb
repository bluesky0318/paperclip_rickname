class Post < ActiveRecord::Base
  
  has_attached_file :attachment#, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # Validate content type
  validates_attachment_content_type :attachment, :content_type => ["application/octet-stream"]
  # Validate filename
  validates_attachment_file_name :attachment, :matches => [/oce\Z/, /OCE\Z/]
  # Explicitly do not validate
  #do_not_validate_attachment_file_type :attachment
end
