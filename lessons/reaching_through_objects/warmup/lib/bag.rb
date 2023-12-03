class Bag
  attr_reader :count,
              :candies

  def initialize
    @empty = true
    @count = 0
    @candies = []
  end

  def empty?
    @empty
  end

  def add_candy(candy)
    @candies << candy
    @empty = false
    @count += 1
  end

  def contains?(candy_name)
      @candies.any? do |candy|
      candy.type == candy_name
      end
  end

end