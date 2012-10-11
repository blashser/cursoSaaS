class Class
  def attr_accessor_with_history(attr_name)
    attr_name  = attr_name.to_s                # make sure it's a string
    attr_reader  attr_name.to_sym              # create the attribute's getter
    attr_reader (attr_name+"_history").to_sym  # create bar_history getter
#   class_eval "your code here, use %Q for multiline strings"
    class_eval %Q{
      def initialize
        @#{attr_name}_history = [nil]
      end
      def #{attr_name}_history=( new_name )
        puts "HOLA HOLA HOLA"
        puts #{attr_name}_history.to_s
      end
    }
    class_eval %Q{
      def #{attr_name}=( new_name )
        @#{attr_name} = new_name
        #{attr_name}_history << new_name
        puts "#{attr_name}_history = [ " + new_name.to_s + " ]"
        puts #{attr_name}_history.to_s
      end
    }
  end
end


class Foo
  attr_accessor_with_history :bar
end

#---------------test-------------#

if __FILE__ == $0
  sergio = Foo.new

  sergio.bar = 5
  puts sergio.bar_history.inspect
  sergio.bar = "mi casa"
  puts sergio.bar_history.inspect
  sergio.bar = [ 5, 6, 9 ]
  puts sergio.bar_history.inspect
  sergio.bar = 10
  puts sergio.bar_history.inspect
  
  sergio.bar_history = 4

  puts sergio.bar_history.inspect
end
