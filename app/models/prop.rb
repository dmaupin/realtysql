class Prop < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
