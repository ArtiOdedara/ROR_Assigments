=begin
Given an array of numbers, remove the duplicates such that each unique element appears only once.
Input: numbers = [0,0,1,1,1,2,2,3,3,4]
Expected output: [0,1,2,3,4, nil, nil, nil, nil, nil]
=end
class Main
  def remove_duplicates
    input_arr = [ 0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    output_arr = []
    input_arr.each { |i|
    if !output_arr.include?(i)
      output_arr.push(i)
    end
  }
  len = input_arr.length - output_arr.length
  for i in 1..len
    output_arr.push(nil)
  end
  print "Numbers:  #{input_arr} \n"
  print "Output: #{output_arr} \n"
  end
end
obj = Main.new
obj.remove_duplicates