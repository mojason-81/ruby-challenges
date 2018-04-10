require 'pry'
class Primer
  attr_reader :matrix, :ranger, :square_range, :slide_range, :sq_limit, :limit

  def initialize(opts = {})
    self.limit = (opts[:limit])
    self.matrix = (opts[:limit])
    self.ranger = (opts[:limit])
    self.sq_limit = (opts[:limit])
    self.square_range = (opts[:limit])
  end

  def ranger=(n)
    @ranger = (2..n)
  end

  def square_range=(n)
    @square_range = (2..@limit)
  end

  def matrix=(n)
    @matrix = (0..n).map { |x| { value: x, bool: true } }
  end

  def sq_limit=(n)
    @sq_limit = Math.sqrt(n).to_i
  end

  def limit=(n)
    @limit = n
  end

  def slide_range(x, y)
    (x..y)
  end

  def alt_c
    @matrix.sort_by! { |x| x[:value] }

    # loop over the list, starting at 2
    @matrix[2..@sq_limit].each do |item|
      # set all multiples of item[:value] to false
      (item[:value]..@matrix.length - 1).step(item[:value]) { |n| marker(cur_item(n)) unless n == item[:value] }
    end
  end

  def marker(item)
    item[:bool] = false
  end

  def cur_item(n)
    @matrix.select { |x| x[:value] == n }.first
  end

  def primes
    alt_c
    @matrix.delete_at(0)
    @matrix.select { |h| h[:bool] == true }.map { |h| h[:value] }
  end
end

puts "Get primes up to a number"
puts "Enter a number: "
n = gets.chomp.to_i
p = Primer.new({limit: n})
puts p.primes
