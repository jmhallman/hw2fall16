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
