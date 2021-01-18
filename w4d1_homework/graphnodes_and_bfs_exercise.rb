class GraphNode

    attr_reader :value
    attr_accessor :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        visited = Set.new
        queue = [starting_node]

        until queue.empty?
            if queue[0].value == target_value
                return queue[0].value
            end
            if !visited.include?(queue[0])
                queue += queue[0].neighbors
                visited += queue[0]
            end
                # remove first element of node
                # check if queue.shift.value == target
                # if not, then add to visited array
                # check on neighbors of the checked node
                # if checked nodes are not in the visited array, then add to queue array
        end
        return nil
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

p GraphNode.bfs(a, "b")