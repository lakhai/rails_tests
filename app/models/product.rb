class Product < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	before_destroy :not_referenced

	validates :name, :description, :thumbnail, :price, presence: true
	validates :name, uniqueness: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :thumbnail, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png|jpeg)\Z}i,
		message: 'must be the URL for a GIF, JPG or PNG image.'
	}

	def not_referenced
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Product has line items')
			return false
		end
	end

	def self.latest
		Product.order(:updated_at).last
	end
end
