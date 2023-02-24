=begin
Convert a hash into an array. Nothing more, Nothing less.
=end
class Main
  def hash_to_arr
    hash = {name: 'Jeremy', age: 24, role: 'Software Engineer'}
    arr = Array.new
    hash.each {
        |k,v| arr.push([k.to_s,v])
    }  
    puts "Input: #{hash}"
    print "Output: #{arr}"
  end
end

obj = Main.new
obj.hash_to_arr