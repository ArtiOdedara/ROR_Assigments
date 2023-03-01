=begin
Convert a hash into an array. Nothing more, Nothing less.
=end
class HashToArray
  def hash_to_arr
    hash = { name: 'Jeremy', age: 24, role: 'Software Engineer'}
    arr = Array.new
    hash.each {
        |k,v| arr.push([k.to_s,v])
    }  
    puts "Input: #{hash}"
    print "Output: #{arr.sort}"
  end
end

obj = HashToArray.new
obj.hash_to_arr
