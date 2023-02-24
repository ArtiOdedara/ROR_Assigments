class Main
  def char_count(my_str)
    len = my_str.length
    count_hash = {}
    i = 0
    while i < len
      var = my_str[i] 
      if count_hash.has_key?(var)
        count_hash[var] +=  1
      else 
        count_hash[var] = 1
      end
        i += 1
    end
    p count_hash
  
  end
end

obj = Main.new
my_str = "aarati"
puts "String: #{my_str}"
obj.char_count(my_str)
