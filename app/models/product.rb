class Product < ActiveRecord::Base
	validates :name, :description, :thumbnail, :price, presence: true
	validates :name, uniqueness: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :thumbnail, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png|jpeg)\Z}i,
		message: 'must be the URL for a GIF, JPG or PNG image.'
	}
end
