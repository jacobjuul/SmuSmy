class Product < ActiveRecord::Base
	has_many :line_items
	has_many :categorizations
	has_many :categories, through: :categorizations
	has_many :orders, through: :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true 
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'image must be GIF, JPG or PNG'
	}
	validates_length_of :title, minimum: 3, too_short: 'Must be more than 3 characters'

	def self.latest
		Product.order(:updated_at).last
	end
	
	private

	# ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
	
end
