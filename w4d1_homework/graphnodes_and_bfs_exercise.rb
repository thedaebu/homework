class GraphNode

    attr_reader :value
    attr_accessor :neighbors

    def initialize(value, neighbors)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        visited = []
        queue = [starting_node]

        until queue.empty?
            queue.shift
            
        end


    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]