=begin
 Create a text file called `array.txt` with content given below(NoCoding)
   [0, 1, 6, 3, 5, 8, 2, 4, 1, 0, 2, 5, 6, 8, 9, 2, 7]

   Now, Create a program to read that array stored in the file.
   find out count of each unique element and 
   stored it in a hash if count is greater than 1 else append/stored in new file called output.txt

   Output should be:
   (on console):
   {0=>2, 1=>2, 6=>2, 5=>2, 8=>2, 2=>3}
   (in `output.txt`):
   {3=>1, 4=>1, 9=>1, 7=>1}
=end

class Main
  def find_count
    aFile = File.open("array.txt", 'r')
    oFile = File.new("output.txt", 'w+')
    elements = eval(aFile.read);
    len = elements.length

    count_hash = {}
    i = 0
    while i < len
      val = elements[i]
      if count_hash.has_key?(val)
        count_hash[val] += 1
      else
        count_hash[val] = 1
      end
      i += 1
    end
 
    hash2 = {}
    count_hash.each {|k,v| 
    if v==1
      hash2[k] = count_hash[k]
      count_hash.delete(k)
    end  
    }
    
    puts count_hash
    oFile.syswrite(hash2)
        
  end
end

obj = Main.new
obj.find_count
