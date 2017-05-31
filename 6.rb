module Stockeable
	@stock = rand(0..1)
	def has_stock?
		@stock == 1 ? true:false
	end
	module_function :has_stock?
end

module Priceable
 attr_accessor :price
	 def discoutend_price(discount)
		 @price - @price * discount
	 end
end

class Product
 include Priceable
	 def initialize(price)
		 @price = price
	 end
end

puts Stockeable.has_stock?