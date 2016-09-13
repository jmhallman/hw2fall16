class CartesianProduct
  include Enumerable

  # YOUR CODE HERE
  
  def initialize(xvar,yvar)
    @xvar = xvar
    @yvar = yvar
  end
  
  def each
    @xvar.each do |x|
      @yvar.each { |y| yield [x,y] }
      end
  end

end


c = CartesianProduct.new([:a,:b,:c], [4,5,7,8])
c.each { |elt| puts elt.inspect }

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
