class Photo < ApplicationRecord
	validates_presence_of :image

	mount_uploader :image, PhotoUploader
	before_create :init_time
	before_update :init_update_time
	Categories = [["轮播图",0],["小图",1]]

	def init_time
		self.created_at = Time.now
		self.updated_at = Time.now
	end

	def init_update_time
		self.updated_at = Time.now
	end
end
