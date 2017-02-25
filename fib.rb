module Fibber
  # If you open irb, you can use these functions via...
  # `require './fib'
  # include Fibber

  # Gives you the sum of all the even Fibonnaci numbers
  # that do not exceed 'x'
  def sum_of_evens(x)
    arr = [0,1]
    total = 0
    loop do
      next_val = arr[-1] + arr[-2]
      break if next_val > x
      total += next_val if next_val.even?

      # Fun note... This reminds me of a shift register
      arr = [arr[-1], next_val]
    end
    puts total
  end

  # Gives you the nth Fibonacci number declared by 'x'
  def nth_fib(x)
    arr = [0,1]
    count = 1
    while count < x
      next_val = arr[-1] + arr[-2]
      arr = [arr[-1], next_val]
      count += 1
    end
    puts next_val
    "The weird algorithm from Hackerank comes to: #{next_val % (10**8 + 7)}"
  end
end
