class Dessert

  def initialize(name, calories)
    # YOUR CODE HERE
    @name = name
    @calories = calories
  end

  def name
    @name
  end
  
  def name=(new_name)
    @name = new_name
  end
  
  def calories
    @calories
  end
  
  def calories=(new_calories)
    @calories = new_calories
  end

  def healthy?
    # YOUR CODE HERE
    if @calories < 200
      return true
    else
      return false
    end
  end
  
  def delicious?
    # YOUR CODE HERE
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    # YOUR CODE HERE
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def flavor
    @flavor
  end
  
  def flavor=(new_flavor)
    @flavor = new_flavor
  end
  
  def delicious?
    # YOUR CODE HERE
    if flavor == "black licorice"
      return false
    else
      return true
    end
  end
end


  cakeObj = Dessert.new("cake", 210)
  cookieObject = Dessert.new("cookie", 190)

  cakeAnswerHealth = cakeObj.healthy?
  puts cakeAnswerHealth

  cookieAnswerHealth = cookieObject.healthy?
  puts cookieAnswerHealth
  
  cakeAnswerDel = cakeObj.delicious?
  puts cakeAnswerDel

  cookieAnswerDel = cookieObject.delicious?
  puts cookieAnswerDel

  jellyBeanObj1 = JellyBean.new("JellyBean1", 90, "Cherry")
  jellyBeanObj2 = JellyBean.new("JellyBean2", 225, "black licorice")
  
  jelly1AnswerHealth = jellyBeanObj1.healthy?
  puts jelly1AnswerHealth

  jelly2AnswerHealth = jellyBeanObj2.healthy?
  puts jelly2AnswerHealth
  
  jelly1AnswerDel = jellyBeanObj1.delicious?
  puts jelly1AnswerDel

  jelly2AnswerDel = jellyBeanObj2.delicious?
  puts jelly2AnswerDel