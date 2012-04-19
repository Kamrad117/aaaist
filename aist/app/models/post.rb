class Post < ActiveRecord::Base
	attr_accessible  :title, :content, :post_images_attributes , :alt_im ,:pre_im
	has_many :post_images, :dependent => :destroy
	accepts_nested_attributes_for :post_images , :allow_destroy => true
  validates_presence_of :title, :content
end