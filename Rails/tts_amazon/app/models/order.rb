class Order < ActiveRecord::Base

	has_many :line_items
	belongs_to :user

	serialize :order_items, Hash
end
