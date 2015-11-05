class Prop < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :pics, :dependent => :destroy
	accepts_nested_attributes_for :pics, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
