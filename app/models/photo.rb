class Photo < ApplicationRecord
	validates_presence_of :image
	if condition
		mount_uploader :image, PhotoUploader
	end
end
