class UtopianTree
	attr_reader :height
	def initialize(initial_height=1)
		@cycle_count = 0
		@height = initial_height
	end

	def add_cycles(n)
		current = @cycle_count
		n.times do
			@cycle_count +=1
			adjust_height
		end
	end

	private
		def adjust_height
			@height *= 2 if @cycle_count%2 != 0
			@height += 1 if @cycle_count%2 == 0
		end
end

gets.to_i.times do 
	cycles = gets.to_i
	utopian_tree = UtopianTree.new
	utopian_tree.add_cycles(cycles)
	puts utopian_tree.height
end
