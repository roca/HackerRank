require "minitest/autorun"
require "./utopian_tree"

describe UtopianTree do
  it "should have a initial heght" do
    UtopianTree.new(1).height.must_equal 1
  end
  it "should have a default initial heght of 1" do
    UtopianTree.new.height.must_equal 1
  end
end
describe "N Cycles" do
	it "should double height after 1st cycle" do
		utopian_tree = UtopianTree.new
		utopian_tree.add_cycles(1)
		utopian_tree.height.must_equal 2
	end
	it "should increase height by 1 meter after 2st cycle" do
		utopian_tree = UtopianTree.new
		utopian_tree.add_cycles(1)
		utopian_tree.add_cycles(1)
		utopian_tree.height.must_equal 3
	end
end
describe "height" do
	before :each do
		@utopian_tree = UtopianTree.new
	end
	it "should be 6 after 3 cycles" do
		@utopian_tree.add_cycles(3)
		@utopian_tree.height.must_equal 6
	end
	it "should be 7 after 4 cycles" do
		@utopian_tree.add_cycles(3)
		@utopian_tree.height.must_equal 6
		@utopian_tree.add_cycles(1)
		@utopian_tree.height.must_equal 7
	end

end