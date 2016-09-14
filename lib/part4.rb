class Class
  
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      def #{attr_name}
        @#{attr_name} 
      end 

      def #{attr_name}=(new_value)
        @#{attr_name}=new_value
        @#{attr_name}_history ||= [nil]
        @#{attr_name}_history.push(new_value)
      end
      
      def #{attr_name}_history
        @#{attr_name}_history ||= [nil]
      end
    }
  end
end


class Foo 
 attr_accessor_with_history :lar
 attr_accessor_with_history :jar
end
f = Foo.new
f.lar = 1
f.lar = 2
f.lar = 34
f = Foo.new
f.lar = 3
varl = f.lar_history
print varl
varj= f.jar_history
print varj
