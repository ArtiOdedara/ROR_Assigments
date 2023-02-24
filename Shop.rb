SHOP_NAME = "Stationary Shop"
COMPANY_NAME = "Classmate"
class Shop
  def initialize(name, price)
    @p_name = name
    @p_price = price
    print "Enter Your Name: "
    @username = gets
    print "Enter gst:"
    @gst = gets.chomp.to_i     
   end
   def getDetails
      
      puts "Welcome to #{SHOP_NAME}!!" 
      puts "Welcome #{@username} your invoice with #{@gst}% gst are below: "
      puts "Product details:"
      gst_calc = (@p_price * @gst) / 100
      totalcost = @p_price + gst_calc
      puts "#{@p_name} - #{@totalcost}"
       
   end
end

s1 = Shop.new("#{COMPANY_NAME} Books",400)
s1.getDetails
s2=Shop.new("#{COMPANY_NAME} Marker",50);
s2.getDetails

