class PostImage < ActiveRecord::Base
  validates_attachment_size :photo, :less_than => 5.megabyte
  belongs_to :post
	has_attached_file :photo, :styles => { :small =>"150x150>", :large =>"320x240>" , :big =>"800X600>"}
end
