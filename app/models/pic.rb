class Pic < ActiveRecord::Base
	mount_uploader :item, ImageUploader
	belongs_to :prop
end
