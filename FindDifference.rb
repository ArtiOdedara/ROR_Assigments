=begin
Find the difference between the square of the sum and the sum of the squares of the first N natural numbers >> (1 + 2 + ... + N)² - (1² + 2² + ... + N²)
=end

class FindDifference
  def find_diff(n)
    sum_of_numbers = 0
    sum_of_squares = 0
    for i in 1..n 
      sum_of_numbers += i
      sum_of_squares += i ** 2
    end
    square_of_nums = sum_of_numbers ** 2
    diff = square_of_nums - sum_of_squares
    puts diff
  end  
end

obj = FindDifference.new
obj.find_diff(5)
