def sluggish(array)
    longest = ""
    (0...array.length).each do |i1|
        (0...array.length).each do |i2|
            if array[i1] >= array[i2]
                new_word = array[i1]
            else
                new_word = array[i2]
            end
            if new_word.length >= longest.length
                longest = new_word
            end
        end
    end
    longest
end

class Array
    def merge_sort(&prc)
        prc ||= Proc.new{|a,b| a<=>b}

        return self if self.count < 2

        mid = self.length/2
        left = self.take(mid)
        right = self.drop(mid)
        sorted_left = left.merge_sort(&prc)
        sorted_right = right.merge_sort(&prc)
        Array.merge(sorted_left, sorted_right, &prc)
    end

    private
    def self.merge(left,right,&prc)
        new_arr = []
        until left.empty? || right.empty?
            if prc.call(left.first, right.first) > 0
                new_arr << right.shift
            else
                new_arr << left.shift
            end
        end
        new_arr + left + right
    end
end
 
def dominant(array)
    prc = Proc.new{|a,b|a.length<=>b.length}
    array.merge_sort(&prc).last
end

def clever(array)
    longest = array.first
    (1...array.length).each do |i|
        if array[i].length >= longest.length
            longest = array[i]
        end
    end
    longest
end

def slow_dance(action, array)
    array.each_with_index {|ele,i| return i if action == ele}
end

def constant_dance(action, array)
    array.index(action)
end


fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p slow_dance("right-down", tiles_array)