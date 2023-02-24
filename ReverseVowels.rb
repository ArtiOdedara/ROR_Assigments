=begin
Reverse only vowels in the given string.
Input: string = "communication"
Expected output: "comminacituon"
=end
class Main
  def reverse_vowels
    str = "communication"
    vowels = ['a', 'e', 'i', 'o', 'u']
    len = str.length
    start_ptr = 0
    end_ptr = len-1
    while start_ptr < end_ptr
      if !vowels.include?(str[start_ptr])
        start_ptr += 1
      elsif !vowels.include?(str[end_ptr])
        end_ptr -= 1
      else
        str[start_ptr], str[end_ptr] = str[end_ptr], str[start_ptr]
        start_ptr += 1
        end_ptr -= 1
      end
    end
    puts "String: #{str}"
  end
end
obj = Main.new
obj.reverse_vowels
