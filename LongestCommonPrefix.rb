=begin
Write a function to find the longest common prefix string amongst an array of strings.
Input: string = ["challenge","characteristic","champion"] 
Expected output: "cha"
=end
class LongestCommonPrefix
  def longest_prefix
    input = ["challenge","characteristic","champion"] 
    arr = input.sort
    first = arr[0]
    str = ""
    for i in 0...first.length
      if input.all? {|x| x[i] == first[i]}
        str += first[i]
      end
    end
      puts "Input: #{input}" 
      puts "Longest Common Prefix: #{str}"
  end
end

obj = LongestCommonPrefix.new
obj.longest_prefix
