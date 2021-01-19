require 'set'

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
            node = queue.shift
            if node.value == target_value
                return node.value
            end
            if !visited.include?(queue[0])
                queue += node.neighbors
                visited += node
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

def bfs(starting_node, target_value)
    visited = Set.new()
    queue = [starting_node]
    
    until queue.empty?
        node = queue.shift
        if node.value == target_value
            return node.value
        end
        if !visited.include?(node)
            queue += node.neighbors
            visited.add(node)
        end
            # remove first element of node
            # check if queue.shift.value == target
            # if not, then add to visited array
            # check on neighbors of the checked node
            # if checked nodes are not in the visited array, then add to queue array
    end
    return nil
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

bfs(a, "b")