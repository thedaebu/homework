class LRUCache

    def initialize(size)
        @size = size
        @queue = []
    end

    def count
        @queue.count
    end

    def add(el)
        if @queue.include?(el)
            @queue.delete(el)
            @queue << el
        elsif @queue.count < @size
            @queue << el
        else
            @queue.shift
            @queue << el
        end
    end

    def show
        p @queue
    end

    private
    attr_reader :size, :queue

end