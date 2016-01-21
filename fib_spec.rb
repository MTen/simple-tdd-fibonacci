require 'minitest/autorun'
require_relative 'fib'

describe Fibonacci, "add stuff!" do
  before do
    @fibonacci = Fibonacci.new
  end

  after do
    @fibonacci = nil
  end

  it "adds" do
    @fibonacci.add(1,2).must_equal(3)
  end

  it 'compute returns an array' do
    @fibonacci.compute(10).must_be_kind_of Array
  end

  it 'first ten results are 1, 2, 3, 5, 8, 13, 21, 34, 55, 89' do
    @fibonacci.fib_me(1, 100).must_equal [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  end

  it 'does not exceed four million' do
    @fibonacci.fib_me(1, 4000000).must_include(3524578)
  end

  it 'last value must be lower than 4000000' do
    @fibonacci.fib_me(1, 4000000).last < 4000000
  end

  it 'adds the even results' do
    @fibonacci.add_even(1, 100).must_equal 44
  end

  it 'gets the awesome number' do
    @fibonacci.add_even(1, 4000000).must_equal 4613732
  end

end