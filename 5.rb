class T
	 def method1
	 	 rand(100)
	 end
end

class Q < T
	attr_accessor :metodo

	def initialize
		@metodo = method1
	end
end


