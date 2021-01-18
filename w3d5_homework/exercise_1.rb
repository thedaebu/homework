class Stack

    attr_reader :ivar

    def initialize
        @ivar = []
    end

    def push(el)
        @ivar << el
        el
    end

    def pop
        @ivar = @ivar[0..-2]
    end

    def peek
        @ivar[-1]
    end
end

# a = Stack.new
# p a.push(1) 
# p a.push(1)
# p a.ivar #=> [1,1]
# p a.peek #=> 1
# a.pop
# p a.ivar #=> [1]

class Queue

    attr_reader :value

    def initialize
        @value = []
    end

    def enqueue(el)
        @value << el
        el
    end

    def dequeue
        @value = @value[1..-1]
    end

    def peek
        @value[-1]
    end

end

# b = Queue.new
# p b.value
# b.enqueue(12)
# b.enqueue(24)
# p b.value #=> [12,24]
# p b.peek  #=> 24
# b.dequeue
# p b.value #=> [24]

class Map

    attr_reader :map

    def initialize
        @map = []
    end

    def set(key, value)
        @map.each do |subarr|
            if subarr.include?(key)
                subarr = [key,value]
            else
                @map <<[key,value]
            end
        end
    end

    def get(key)
        @map.each do |subarr|
            if subarr.include?(key)
                return subarr[1]
            end
        end
        false
    end

    def delete(key)
        @map.reject {|subarr| subarr.include?(key)}
    end

    def show
       @map.deep_dup 
    end

    def deep_dup
        new_arr = []
        return new_arr << self if !self.is_a?(Array)
        self.each_with_index do |ele,i|
            if ele.is_a?(Array)
                self[i].deep_dup
            else
                new_arr << self[i]
            end
        new_arr
    end
    
end
