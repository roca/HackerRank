class Flipbit
	def flip(a)
		31.downto(0).map { |n| (~a)[n] }.join.to_i(2)
	end
end

t = gets.to_i
bit_flipper = Flipbit.new
t.times do 
	a = gets.to_i
	puts bit_flipper.flip(a)
end

