=begin
Your task is to make a function that can take any non-negative integer
 as an argument and return it with its digits in descending order. 
 Essentially, rearrange the digits to create the highest possible number.
=end

class HighestPossibleNumber
  def desc_number(n)
    input = n 
    num = n.to_s
    len = num.length
    arr = Array.new
    for i in 0...len
      num = n % 10
      n = n / 10
      arr.insert(i, num)
    end
    arr1 = arr.sort.reverse
    my_str = " "
    for i in 0..arr.length
      my_str += arr1[i].to_s
    end
    puts "Input: #{input}"
    puts "Output: #{my_str.to_i}" 

  end
end

obj = HighestPossibleNumber.new
obj.desc_number( 123456789 )

