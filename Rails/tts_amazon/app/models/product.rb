class Product < ActiveRecord::Base



	mount_uploader :image, ImageUploader

		belongs_to :category
		validates :category_id, presence: true

end
