class Sponsored < ActiveRecord::Base
	attr_accessible :name , :description, :immage , :pre_im , :alt_im
	validates_presence_of :name, :description
 validates_attachment_size :immage, :less_than => 5.megabyte
	has_attached_file :immage, :styles => { :small =>"150x150>", :large =>"320x240>" , :big =>"800X600>"}
end
