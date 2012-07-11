class LineItem < ActiveRecord::Base
  attr_accessible :cart, :product_id, :product, :quantity
  belongs_to :product
  belongs_to :cart
end
