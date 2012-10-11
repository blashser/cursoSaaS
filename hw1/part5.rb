class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s        # make sure it's a string
    attr_reader attr_name             # create the attribute's getter
    attr_reader attr_name+"_history"  # create bar_history getter
    class_eval %Q{
      def #{attr_name}=( new_name )
        unless @#{attr_name}_history
          @#{attr_name}_history = [nil]
        end

        @#{attr_name} = new_name
        @#{attr_name}_history << new_name
      end
    }
  end
end


class Foo
  attr_accessor_with_history :bar
  attr_accessor_with_history :bares
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

  sergio.bares = 5
  puts sergio.bares_history.inspect
  sergio.bares = "mi casa"
  puts sergio.bares_history.inspect
  sergio.bares = [ 5, 6, 9 ]
  puts sergio.bares_history.inspect
  sergio.bares = 10
  puts sergio.bares_history.inspect

  sergio = Foo.new

  sergio.bar = 5
  puts sergio.bar_history.inspect
  sergio.bar = "mi casa"
  puts sergio.bar_history.inspect

  sergio.bares = 5
  puts sergio.bares_history.inspect
  sergio.bares = "mi casa"
  puts sergio.bares_history.inspect
end
