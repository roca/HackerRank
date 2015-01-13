require "minitest/autorun"
require "./flipbit"

describe Flipbit do
  it "includes it has a flip method" do
    Flipbit.new.flip(1).must_equal 4294967294 
  end
end