class Fibonacci

  def add( num_1, num_2)
    num_1 + num_2
  end

  #figure out the logic of the algorythm
  def compute(size_limit)
    lim = size_limit - 1
    x = 1
    y = 1
    answer = [x]
    lim.times do
      value = add(x,y)
      answer.push(value)
      x = y
      y = value
    end
    answer
  end

  def fib_me(starting_value, ending_value)
    answer = [starting_value]
    x, y = starting_value, starting_value

    while (value = add(x,y)) < ending_value
      answer.push(value)
      x, y = y, value
    end
    answer
  end

  def add_even(starting_value, ending_value)
    val = fib_me(starting_value, ending_value)

    val.select { |x| x % 2 == 0 }.reduce(:+)
  end

end